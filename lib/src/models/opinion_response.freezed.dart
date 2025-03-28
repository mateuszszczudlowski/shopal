// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opinion_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpinionResponse _$OpinionResponseFromJson(Map<String, dynamic> json) {
  return _OpinionResponse.fromJson(json);
}

/// @nodoc
mixin _$OpinionResponse {
  String get id => throw _privateConstructorUsedError;
  String get opinionId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get specialistId => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpinionResponseCopyWith<OpinionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpinionResponseCopyWith<$Res> {
  factory $OpinionResponseCopyWith(
          OpinionResponse value, $Res Function(OpinionResponse) then) =
      _$OpinionResponseCopyWithImpl<$Res, OpinionResponse>;
  @useResult
  $Res call(
      {String id,
      String opinionId,
      String createdAt,
      String specialistId,
      String author,
      String response});
}

/// @nodoc
class _$OpinionResponseCopyWithImpl<$Res, $Val extends OpinionResponse>
    implements $OpinionResponseCopyWith<$Res> {
  _$OpinionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? opinionId = null,
    Object? createdAt = null,
    Object? specialistId = null,
    Object? author = null,
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      opinionId: null == opinionId
          ? _value.opinionId
          : opinionId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      specialistId: null == specialistId
          ? _value.specialistId
          : specialistId // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpinionResponseImplCopyWith<$Res>
    implements $OpinionResponseCopyWith<$Res> {
  factory _$$OpinionResponseImplCopyWith(_$OpinionResponseImpl value,
          $Res Function(_$OpinionResponseImpl) then) =
      __$$OpinionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String opinionId,
      String createdAt,
      String specialistId,
      String author,
      String response});
}

/// @nodoc
class __$$OpinionResponseImplCopyWithImpl<$Res>
    extends _$OpinionResponseCopyWithImpl<$Res, _$OpinionResponseImpl>
    implements _$$OpinionResponseImplCopyWith<$Res> {
  __$$OpinionResponseImplCopyWithImpl(
      _$OpinionResponseImpl _value, $Res Function(_$OpinionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? opinionId = null,
    Object? createdAt = null,
    Object? specialistId = null,
    Object? author = null,
    Object? response = null,
  }) {
    return _then(_$OpinionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      opinionId: null == opinionId
          ? _value.opinionId
          : opinionId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      specialistId: null == specialistId
          ? _value.specialistId
          : specialistId // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$OpinionResponseImpl implements _OpinionResponse {
  const _$OpinionResponseImpl(
      {required this.id,
      required this.opinionId,
      required this.createdAt,
      required this.specialistId,
      required this.author,
      required this.response});

  factory _$OpinionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpinionResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String opinionId;
  @override
  final String createdAt;
  @override
  final String specialistId;
  @override
  final String author;
  @override
  final String response;

  @override
  String toString() {
    return 'OpinionResponse(id: $id, opinionId: $opinionId, createdAt: $createdAt, specialistId: $specialistId, author: $author, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpinionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.opinionId, opinionId) ||
                other.opinionId == opinionId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.specialistId, specialistId) ||
                other.specialistId == specialistId) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, opinionId, createdAt, specialistId, author, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpinionResponseImplCopyWith<_$OpinionResponseImpl> get copyWith =>
      __$$OpinionResponseImplCopyWithImpl<_$OpinionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpinionResponseImplToJson(
      this,
    );
  }
}

abstract class _OpinionResponse implements OpinionResponse {
  const factory _OpinionResponse(
      {required final String id,
      required final String opinionId,
      required final String createdAt,
      required final String specialistId,
      required final String author,
      required final String response}) = _$OpinionResponseImpl;

  factory _OpinionResponse.fromJson(Map<String, dynamic> json) =
      _$OpinionResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get opinionId;
  @override
  String get createdAt;
  @override
  String get specialistId;
  @override
  String get author;
  @override
  String get response;
  @override
  @JsonKey(ignore: true)
  _$$OpinionResponseImplCopyWith<_$OpinionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
