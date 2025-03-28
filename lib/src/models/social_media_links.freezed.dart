// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_media_links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocialMediaLinks _$SocialMediaLinksFromJson(Map<String, dynamic> json) {
  return _SocialMediaLinks.fromJson(json);
}

/// @nodoc
mixin _$SocialMediaLinks {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String? get facebookLink => throw _privateConstructorUsedError;
  String? get instagramLink => throw _privateConstructorUsedError;
  String? get youtubeLink => throw _privateConstructorUsedError;
  String? get websiteLink => throw _privateConstructorUsedError;
  String get specialistId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialMediaLinksCopyWith<SocialMediaLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialMediaLinksCopyWith<$Res> {
  factory $SocialMediaLinksCopyWith(
          SocialMediaLinks value, $Res Function(SocialMediaLinks) then) =
      _$SocialMediaLinksCopyWithImpl<$Res, SocialMediaLinks>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String? facebookLink,
      String? instagramLink,
      String? youtubeLink,
      String? websiteLink,
      String specialistId});
}

/// @nodoc
class _$SocialMediaLinksCopyWithImpl<$Res, $Val extends SocialMediaLinks>
    implements $SocialMediaLinksCopyWith<$Res> {
  _$SocialMediaLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? facebookLink = freezed,
    Object? instagramLink = freezed,
    Object? youtubeLink = freezed,
    Object? websiteLink = freezed,
    Object? specialistId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      facebookLink: freezed == facebookLink
          ? _value.facebookLink
          : facebookLink // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramLink: freezed == instagramLink
          ? _value.instagramLink
          : instagramLink // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeLink: freezed == youtubeLink
          ? _value.youtubeLink
          : youtubeLink // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteLink: freezed == websiteLink
          ? _value.websiteLink
          : websiteLink // ignore: cast_nullable_to_non_nullable
              as String?,
      specialistId: null == specialistId
          ? _value.specialistId
          : specialistId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialMediaLinksImplCopyWith<$Res>
    implements $SocialMediaLinksCopyWith<$Res> {
  factory _$$SocialMediaLinksImplCopyWith(_$SocialMediaLinksImpl value,
          $Res Function(_$SocialMediaLinksImpl) then) =
      __$$SocialMediaLinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String? facebookLink,
      String? instagramLink,
      String? youtubeLink,
      String? websiteLink,
      String specialistId});
}

/// @nodoc
class __$$SocialMediaLinksImplCopyWithImpl<$Res>
    extends _$SocialMediaLinksCopyWithImpl<$Res, _$SocialMediaLinksImpl>
    implements _$$SocialMediaLinksImplCopyWith<$Res> {
  __$$SocialMediaLinksImplCopyWithImpl(_$SocialMediaLinksImpl _value,
      $Res Function(_$SocialMediaLinksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? facebookLink = freezed,
    Object? instagramLink = freezed,
    Object? youtubeLink = freezed,
    Object? websiteLink = freezed,
    Object? specialistId = null,
  }) {
    return _then(_$SocialMediaLinksImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      facebookLink: freezed == facebookLink
          ? _value.facebookLink
          : facebookLink // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramLink: freezed == instagramLink
          ? _value.instagramLink
          : instagramLink // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeLink: freezed == youtubeLink
          ? _value.youtubeLink
          : youtubeLink // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteLink: freezed == websiteLink
          ? _value.websiteLink
          : websiteLink // ignore: cast_nullable_to_non_nullable
              as String?,
      specialistId: null == specialistId
          ? _value.specialistId
          : specialistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SocialMediaLinksImpl implements _SocialMediaLinks {
  const _$SocialMediaLinksImpl(
      {required this.id,
      required this.createdAt,
      required this.facebookLink,
      required this.instagramLink,
      required this.youtubeLink,
      required this.websiteLink,
      required this.specialistId});

  factory _$SocialMediaLinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialMediaLinksImplFromJson(json);

  @override
  final String id;
  @override
  final String createdAt;
  @override
  final String? facebookLink;
  @override
  final String? instagramLink;
  @override
  final String? youtubeLink;
  @override
  final String? websiteLink;
  @override
  final String specialistId;

  @override
  String toString() {
    return 'SocialMediaLinks(id: $id, createdAt: $createdAt, facebookLink: $facebookLink, instagramLink: $instagramLink, youtubeLink: $youtubeLink, websiteLink: $websiteLink, specialistId: $specialistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialMediaLinksImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.facebookLink, facebookLink) ||
                other.facebookLink == facebookLink) &&
            (identical(other.instagramLink, instagramLink) ||
                other.instagramLink == instagramLink) &&
            (identical(other.youtubeLink, youtubeLink) ||
                other.youtubeLink == youtubeLink) &&
            (identical(other.websiteLink, websiteLink) ||
                other.websiteLink == websiteLink) &&
            (identical(other.specialistId, specialistId) ||
                other.specialistId == specialistId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, facebookLink,
      instagramLink, youtubeLink, websiteLink, specialistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialMediaLinksImplCopyWith<_$SocialMediaLinksImpl> get copyWith =>
      __$$SocialMediaLinksImplCopyWithImpl<_$SocialMediaLinksImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialMediaLinksImplToJson(
      this,
    );
  }
}

abstract class _SocialMediaLinks implements SocialMediaLinks {
  const factory _SocialMediaLinks(
      {required final String id,
      required final String createdAt,
      required final String? facebookLink,
      required final String? instagramLink,
      required final String? youtubeLink,
      required final String? websiteLink,
      required final String specialistId}) = _$SocialMediaLinksImpl;

  factory _SocialMediaLinks.fromJson(Map<String, dynamic> json) =
      _$SocialMediaLinksImpl.fromJson;

  @override
  String get id;
  @override
  String get createdAt;
  @override
  String? get facebookLink;
  @override
  String? get instagramLink;
  @override
  String? get youtubeLink;
  @override
  String? get websiteLink;
  @override
  String get specialistId;
  @override
  @JsonKey(ignore: true)
  _$$SocialMediaLinksImplCopyWith<_$SocialMediaLinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
