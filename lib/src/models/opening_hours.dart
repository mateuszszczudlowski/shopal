import 'package:freezed_annotation/freezed_annotation.dart';

part 'opening_hours.freezed.dart';
part 'opening_hours.g.dart';

@freezed
class OpeningHours with _$OpeningHours {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OpeningHours(
      {required String? id,
      required int? dayOfWeek,
      required String? openingTime,
      required String? closingTime,
      required String? specialistId}) = _OpeningHours;

  factory OpeningHours.fromJson(Map<String, Object?> json) =>
      _$OpeningHoursFromJson(json);
}
