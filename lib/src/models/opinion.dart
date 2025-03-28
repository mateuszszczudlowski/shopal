import 'package:freezed_annotation/freezed_annotation.dart';

part 'opinion.freezed.dart';
part 'opinion.g.dart';

@freezed
class Opinion with _$Opinion {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Opinion({
    required String id,
    required String opinion,
    required double rating,
    required String service,
    required String createdAt,
    required String specialistId,
    required String opinionAuthor,
  }) = _Opinion;

  factory Opinion.fromJson(Map<String, Object?> json) =>
      _$OpinionFromJson(json);
}
