import 'package:freezed_annotation/freezed_annotation.dart';

part 'opinion_response.freezed.dart';
part 'opinion_response.g.dart';

@freezed
class OpinionResponse with _$OpinionResponse {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OpinionResponse({
    required String id,
    required String opinionId,
    required String createdAt,
    required String specialistId,
    required String author,
    required String response,
  }) = _OpinionResponse;

  factory OpinionResponse.fromJson(Map<String, Object?> json) =>
      _$OpinionResponseFromJson(json);
}
