// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Services _$ServicesFromJson(Map<String, dynamic> json) {
  return _Services.fromJson(json);
}

/// @nodoc
mixin _$Services {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String? get specialOffer => throw _privateConstructorUsedError;
  String get specialistId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServicesCopyWith<Services> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesCopyWith<$Res> {
  factory $ServicesCopyWith(Services value, $Res Function(Services) then) =
      _$ServicesCopyWithImpl<$Res, Services>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String name,
      String price,
      String? duration,
      String? specialOffer,
      String specialistId});
}

/// @nodoc
class _$ServicesCopyWithImpl<$Res, $Val extends Services>
    implements $ServicesCopyWith<$Res> {
  _$ServicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? price = null,
    Object? duration = freezed,
    Object? specialOffer = freezed,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      specialOffer: freezed == specialOffer
          ? _value.specialOffer
          : specialOffer // ignore: cast_nullable_to_non_nullable
              as String?,
      specialistId: null == specialistId
          ? _value.specialistId
          : specialistId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServicesImplCopyWith<$Res>
    implements $ServicesCopyWith<$Res> {
  factory _$$ServicesImplCopyWith(
          _$ServicesImpl value, $Res Function(_$ServicesImpl) then) =
      __$$ServicesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String name,
      String price,
      String? duration,
      String? specialOffer,
      String specialistId});
}

/// @nodoc
class __$$ServicesImplCopyWithImpl<$Res>
    extends _$ServicesCopyWithImpl<$Res, _$ServicesImpl>
    implements _$$ServicesImplCopyWith<$Res> {
  __$$ServicesImplCopyWithImpl(
      _$ServicesImpl _value, $Res Function(_$ServicesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? price = null,
    Object? duration = freezed,
    Object? specialOffer = freezed,
    Object? specialistId = null,
  }) {
    return _then(_$ServicesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      specialOffer: freezed == specialOffer
          ? _value.specialOffer
          : specialOffer // ignore: cast_nullable_to_non_nullable
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
class _$ServicesImpl implements _Services {
  const _$ServicesImpl(
      {required this.id,
      required this.createdAt,
      required this.name,
      required this.price,
      required this.duration,
      required this.specialOffer,
      required this.specialistId});

  factory _$ServicesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServicesImplFromJson(json);

  @override
  final String id;
  @override
  final String createdAt;
  @override
  final String name;
  @override
  final String price;
  @override
  final String? duration;
  @override
  final String? specialOffer;
  @override
  final String specialistId;

  @override
  String toString() {
    return 'Services(id: $id, createdAt: $createdAt, name: $name, price: $price, duration: $duration, specialOffer: $specialOffer, specialistId: $specialistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.specialOffer, specialOffer) ||
                other.specialOffer == specialOffer) &&
            (identical(other.specialistId, specialistId) ||
                other.specialistId == specialistId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, name, price,
      duration, specialOffer, specialistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServicesImplCopyWith<_$ServicesImpl> get copyWith =>
      __$$ServicesImplCopyWithImpl<_$ServicesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServicesImplToJson(
      this,
    );
  }
}

abstract class _Services implements Services {
  const factory _Services(
      {required final String id,
      required final String createdAt,
      required final String name,
      required final String price,
      required final String? duration,
      required final String? specialOffer,
      required final String specialistId}) = _$ServicesImpl;

  factory _Services.fromJson(Map<String, dynamic> json) =
      _$ServicesImpl.fromJson;

  @override
  String get id;
  @override
  String get createdAt;
  @override
  String get name;
  @override
  String get price;
  @override
  String? get duration;
  @override
  String? get specialOffer;
  @override
  String get specialistId;
  @override
  @JsonKey(ignore: true)
  _$$ServicesImplCopyWith<_$ServicesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
