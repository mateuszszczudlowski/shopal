import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_media_links.freezed.dart';
part 'social_media_links.g.dart';

@freezed
class SocialMediaLinks with _$SocialMediaLinks {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SocialMediaLinks(
      {required String id,
      required String createdAt,
      required String? facebookLink,
      required String? instagramLink,
      required String? youtubeLink,
      required String? websiteLink,
      required String specialistId}) = _SocialMediaLinks;

  factory SocialMediaLinks.fromJson(Map<String, Object?> json) =>
      _$SocialMediaLinksFromJson(json);
}
