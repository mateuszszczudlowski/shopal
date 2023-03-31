import 'package:autoequal/autoequal.dart';
import 'package:equatable/equatable.dart';

import 'package:json_annotation/json_annotation.dart';

part 'user_profile.g.dart';

@autoequalMixin
@JsonSerializable(fieldRename: FieldRename.snake)
class UserProfile extends Equatable with _$UserProfileAutoequalMixin {
  final String? userName;
  final bool darkMode;
  final String id;
  final String createdAt;

  const UserProfile({
    required this.userName,
    required this.darkMode,
    required this.id,
    required this.createdAt,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}
