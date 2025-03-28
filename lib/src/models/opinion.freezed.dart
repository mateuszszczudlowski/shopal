// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opinion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Opinion _$OpinionFromJson(Map<String, dynamic> json) {
  return _Opinion.fromJson(json);
}

/// @nodoc
mixin _$Opinion {
  String get id => throw _privateConstructorUsedError;
  String get opinion => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get service => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get specialistId => throw _privateConstructorUsedError;
  String get opinionAuthor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpinionCopyWith<Opinion> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpinionCopyWith<$Res> {
  factory $OpinionCopyWith(Opinion value, $Res Function(Opinion) then) =
      _$OpinionCopyWithImpl<$Res, Opinion>;
  @useResult
  $Res call(
      {String id,
      String opinion,
      double rating,
      String service,
      String createdAt,
      String specialistId,
      String opinionAuthor});
}

/// @nodoc
class _$OpinionCopyWithImpl<$Res, $Val extends Opinion>
    implements $OpinionCopyWith<$Res> {
  _$OpinionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? opinion = null,
    Object? rating = null,
    Object? service = null,
    Object? createdAt = null,
    Object? specialistId = null,
    Object? opinionAuthor = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      opinion: null == opinion
          ? _value.opinion
          : opinion // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      specialistId: null == specialistId
          ? _value.specialistId
          : specialistId // ignore: cast_nullable_to_non_nullable
              as String,
      opinionAuthor: null == opinionAuthor
          ? _value.opinionAuthor
          : opinionAuthor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpinionImplCopyWith<$Res> implements $OpinionCopyWith<$Res> {
  factory _$$OpinionImplCopyWith(
          _$OpinionImpl value, $Res Function(_$OpinionImpl) then) =
      __$$OpinionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String opinion,
      double rating,
      String service,
      String createdAt,
      String specialistId,
      String opinionAuthor});
}

/// @nodoc
class __$$OpinionImplCopyWithImpl<$Res>
    extends _$OpinionCopyWithImpl<$Res, _$OpinionImpl>
    implements _$$OpinionImplCopyWith<$Res> {
  __$$OpinionImplCopyWithImpl(
      _$OpinionImpl _value, $Res Function(_$OpinionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? opinion = null,
    Object? rating = null,
    Object? service = null,
    Object? createdAt = null,
    Object? specialistId = null,
    Object? opinionAuthor = null,
  }) {
    return _then(_$OpinionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      opinion: null == opinion
          ? _value.opinion
          : opinion // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      specialistId: null == specialistId
          ? _value.specialistId
          : specialistId // ignore: cast_nullable_to_non_nullable
              as String,
      opinionAuthor: null == opinionAuthor
          ? _value.opinionAuthor
          : opinionAuthor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$OpinionImpl implements _Opinion {
  const _$OpinionImpl(
      {required this.id,
      required this.opinion,
      required this.rating,
      required this.service,
      required this.createdAt,
      required this.specialistId,
      required this.opinionAuthor});

  factory _$OpinionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpinionImplFromJson(json);

  @override
  final String id;
  @override
  final String opinion;
  @override
  final double rating;
  @override
  final String service;
  @override
  final String createdAt;
  @override
  final String specialistId;
  @override
  final String opinionAuthor;

  @override
  String toString() {
    return 'Opinion(id: $id, opinion: $opinion, rating: $rating, service: $service, createdAt: $createdAt, specialistId: $specialistId, opinionAuthor: $opinionAuthor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpinionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.opinion, opinion) || other.opinion == opinion) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.specialistId, specialistId) ||
                other.specialistId == specialistId) &&
            (identical(other.opinionAuthor, opinionAuthor) ||
                other.opinionAuthor == opinionAuthor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, opinion, rating, service,
      createdAt, specialistId, opinionAuthor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpinionImplCopyWith<_$OpinionImpl> get copyWith =>
      __$$OpinionImplCopyWithImpl<_$OpinionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpinionImplToJson(
      this,
    );
  }
}

abstract class _Opinion implements Opinion {
  const factory _Opinion(
      {required final String id,
      required final String opinion,
      required final double rating,
      required final String service,
      required final String createdAt,
      required final String specialistId,
      required final String opinionAuthor}) = _$OpinionImpl;

  factory _Opinion.fromJson(Map<String, dynamic> json) = _$OpinionImpl.fromJson;

  @override
  String get id;
  @override
  String get opinion;
  @override
  double get rating;
  @override
  String get service;
  @override
  String get createdAt;
  @override
  String get specialistId;
  @override
  String get opinionAuthor;
  @override
  @JsonKey(ignore: true)
  _$$OpinionImplCopyWith<_$OpinionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
