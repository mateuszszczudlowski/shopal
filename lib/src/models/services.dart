import 'package:freezed_annotation/freezed_annotation.dart';

part 'services.freezed.dart';
part 'services.g.dart';

@freezed
class Services with _$Services {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Services({
    required String id,
    required String createdAt,
    required String name,
    required String price,
    required String? duration,
    required String? specialOffer,
    required String specialistId,
  }) = _Services;

  factory Services.fromJson(Map<String, Object?> json) =>
      _$ServicesFromJson(json);
}
