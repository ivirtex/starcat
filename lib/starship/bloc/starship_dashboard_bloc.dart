// Dart imports:
import 'dart:async';
import 'dart:developer';

// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_repository/launch_library_repository.dart';
import 'package:spaceflight_news_repository/spaceflight_news_repository.dart';

part 'starship_dashboard_event.dart';
part 'starship_dashboard_state.dart';
part 'starship_dashboard_bloc.g.dart';

class StarshipDashboardBloc
    extends HydratedBloc<StarshipDashboardEvent, StarshipDashboardState> {
  StarshipDashboardBloc(this._repository, this._newsRepository)
      : super(const StarshipDashboardState()) {
    on<StarshipDashboardRequested>(_onStarshipDashboardRequested);
  }

  final LaunchLibraryRepository _repository;
  final SpaceflightNewsRepository _newsRepository;

  @override
  StarshipDashboardState? fromJson(Map<String, dynamic> json) =>
      StarshipDashboardState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(StarshipDashboardState state) => state.toJson();

  Future<void> _onStarshipDashboardRequested(
    StarshipDashboardRequested event,
    Emitter<StarshipDashboardState> emit,
  ) async {
    final futures = [
      _fetchStarshipDashboard(emit),
      _fetchNews(emit),
    ];

    await Future.wait(futures);
  }

  Future<void> _fetchStarshipDashboard(
    Emitter<StarshipDashboardState> emit,
  ) async {
    emit(
      state.copyWith(
        dashboardStatus: FetchStatus.loading,
      ),
    );

    try {
      final dashboard = await _repository.getStarshipDashboard();

      emit(
        state.copyWith(
          dashboardStatus: FetchStatus.success,
          dashboard: dashboard,
        ),
      );
    } catch (err) {
      log('StarshipDashboardBloc._fetchStarshipDashboard: $err');

      if (kReleaseMode) {
        await FirebaseCrashlytics.instance.recordError(
          err,
          StackTrace.current,
          reason: 'LaunchesBloc._fetchStarshipDashboard',
        );
      }

      emit(
        state.copyWith(dashboardStatus: FetchStatus.failure),
      );
    }
  }

  Future<void> _fetchNews(
    Emitter<StarshipDashboardState> emit,
  ) async {
    emit(
      state.copyWith(
        newsStatus: FetchStatus.loading,
      ),
    );

    try {
      final news = await _newsRepository.getNews(searchTopic: 'Starship');

      emit(
        state.copyWith(
          newsStatus: FetchStatus.success,
          news: news,
        ),
      );
    } catch (err) {
      log('StarshipDashboardBloc._fetchNews: $err');

      if (kReleaseMode) {
        await FirebaseCrashlytics.instance.recordError(
          err,
          StackTrace.current,
          reason: 'LaunchesBloc._fetchNews',
        );
      }

      emit(
        state.copyWith(newsStatus: FetchStatus.failure),
      );
    }
  }
}
