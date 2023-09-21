// Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:launch_library_api/launch_library_api.dart';

part 'launches.g.dart';

@JsonSerializable()
class Launches extends Equatable {
  const Launches({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });

  factory Launches.fromJson(Map<String, dynamic> json) =>
      _$LaunchesFromJson(json);

  final int count;
  final String? next;
  final String? previous;
  final List<Launch> results;

  Map<String, dynamic> toJson() => _$LaunchesToJson(this);

  @override
  List<Object?> get props => [
        count,
        next,
        previous,
        results,
      ];
}
