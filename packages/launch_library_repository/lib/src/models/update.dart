import 'package:json_annotation/json_annotation.dart';
import 'package:launch_library_api/api.dart' as api;
import 'package:equatable/equatable.dart';

part 'update.g.dart';

@JsonSerializable()
class Update extends Equatable {
  /// Returns a new [Update] instance.
  const Update({
    required this.id,
    required this.profileImage,
    required this.createdBy,
    required this.createdOn,
    this.comment,
    this.infoUrl,
  });

  factory Update.fromJson(Map<String, dynamic> json) => _$UpdateFromJson(json);

  factory Update.fromApi(api.Update data) {
    return Update(
      id: data.id,
      profileImage: data.profileImage,
      comment: data.comment,
      infoUrl: data.infoUrl,
      createdBy: data.createdBy,
      createdOn: data.createdOn,
    );
  }

  final int id;
  final String profileImage;
  final String? comment;
  final String? infoUrl;
  final String createdBy;
  final DateTime createdOn;

  Map<String, dynamic> toJson() => _$UpdateToJson(this);

  @override
  List<Object?> get props => [
        id,
        profileImage,
        comment,
        infoUrl,
        createdBy,
        createdOn,
      ];
}
