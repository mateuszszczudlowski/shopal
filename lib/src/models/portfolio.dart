import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio.freezed.dart';
part 'portfolio.g.dart';

@freezed
class Portfolio with _$Portfolio {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Portfolio({
    required String id,
    required String createdAt,
    required String specialistId,
    required String imageLink,
    required int? showcase,
  }) = _Portfolio;

  factory Portfolio.fromJson(Map<String, Object?> json) =>
      _$PortfolioFromJson(json);
}
