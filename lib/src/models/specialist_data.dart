import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template/src/models/opening_hours.dart';
import 'package:template/src/models/opinion.dart';
import 'package:template/src/models/opinion_response.dart';
import 'package:template/src/models/portfolio.dart';
import 'package:template/src/models/services.dart';
import 'package:template/src/models/social_media_links.dart';

part 'specialist_data.freezed.dart';
part 'specialist_data.g.dart';

@freezed
class SpecialistData with _$SpecialistData {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SpecialistData({
    required String id,
    required String name,
    required String? description,
    required String? adress,
    required String? mainImage,
    required double? averageRating,
    required int? numberOfOpinions,
    required List<Opinion>? opinions,
    required List<OpinionResponse>? opinionsResponses,
    required String? phoneNumber,
    required List<OpeningHours>? openingHours,
    required List<SocialMediaLinks>? socialMediaLinks,
    required List<Services>? services,
    required List<Portfolio>? portfolio,
  }) = _SpecialistData;

  factory SpecialistData.fromJson(Map<String, Object?> json) =>
      _$SpecialistDataFromJson(json);
}
