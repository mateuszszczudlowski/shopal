// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opening_hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) {
  return _OpeningHours.fromJson(json);
}

/// @nodoc
mixin _$OpeningHours {
  String? get id => throw _privateConstructorUsedError;
  int? get dayOfWeek => throw _privateConstructorUsedError;
  String? get openingTime => throw _privateConstructorUsedError;
  String? get closingTime => throw _privateConstructorUsedError;
  String? get specialistId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpeningHoursCopyWith<OpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHoursCopyWith<$Res> {
  factory $OpeningHoursCopyWith(
          OpeningHours value, $Res Function(OpeningHours) then) =
      _$OpeningHoursCopyWithImpl<$Res, OpeningHours>;
  @useResult
  $Res call(
      {String? id,
      int? dayOfWeek,
      String? openingTime,
      String? closingTime,
      String? specialistId});
}

/// @nodoc
class _$OpeningHoursCopyWithImpl<$Res, $Val extends OpeningHours>
    implements $OpeningHoursCopyWith<$Res> {
  _$OpeningHoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dayOfWeek = freezed,
    Object? openingTime = freezed,
    Object? closingTime = freezed,
    Object? specialistId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dayOfWeek: freezed == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      openingTime: freezed == openingTime
          ? _value.openingTime
          : openingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      closingTime: freezed == closingTime
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      specialistId: freezed == specialistId
          ? _value.specialistId
          : specialistId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpeningHoursImplCopyWith<$Res>
    implements $OpeningHoursCopyWith<$Res> {
  factory _$$OpeningHoursImplCopyWith(
          _$OpeningHoursImpl value, $Res Function(_$OpeningHoursImpl) then) =
      __$$OpeningHoursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? dayOfWeek,
      String? openingTime,
      String? closingTime,
      String? specialistId});
}

/// @nodoc
class __$$OpeningHoursImplCopyWithImpl<$Res>
    extends _$OpeningHoursCopyWithImpl<$Res, _$OpeningHoursImpl>
    implements _$$OpeningHoursImplCopyWith<$Res> {
  __$$OpeningHoursImplCopyWithImpl(
      _$OpeningHoursImpl _value, $Res Function(_$OpeningHoursImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dayOfWeek = freezed,
    Object? openingTime = freezed,
    Object? closingTime = freezed,
    Object? specialistId = freezed,
  }) {
    return _then(_$OpeningHoursImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dayOfWeek: freezed == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      openingTime: freezed == openingTime
          ? _value.openingTime
          : openingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      closingTime: freezed == closingTime
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      specialistId: freezed == specialistId
          ? _value.specialistId
          : specialistId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$OpeningHoursImpl implements _OpeningHours {
  const _$OpeningHoursImpl(
      {required this.id,
      required this.dayOfWeek,
      required this.openingTime,
      required this.closingTime,
      required this.specialistId});

  factory _$OpeningHoursImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpeningHoursImplFromJson(json);

  @override
  final String? id;
  @override
  final int? dayOfWeek;
  @override
  final String? openingTime;
  @override
  final String? closingTime;
  @override
  final String? specialistId;

  @override
  String toString() {
    return 'OpeningHours(id: $id, dayOfWeek: $dayOfWeek, openingTime: $openingTime, closingTime: $closingTime, specialistId: $specialistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningHoursImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.openingTime, openingTime) ||
                other.openingTime == openingTime) &&
            (identical(other.closingTime, closingTime) ||
                other.closingTime == closingTime) &&
            (identical(other.specialistId, specialistId) ||
                other.specialistId == specialistId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, dayOfWeek, openingTime, closingTime, specialistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpeningHoursImplCopyWith<_$OpeningHoursImpl> get copyWith =>
      __$$OpeningHoursImplCopyWithImpl<_$OpeningHoursImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpeningHoursImplToJson(
      this,
    );
  }
}

abstract class _OpeningHours implements OpeningHours {
  const factory _OpeningHours(
      {required final String? id,
      required final int? dayOfWeek,
      required final String? openingTime,
      required final String? closingTime,
      required final String? specialistId}) = _$OpeningHoursImpl;

  factory _OpeningHours.fromJson(Map<String, dynamic> json) =
      _$OpeningHoursImpl.fromJson;

  @override
  String? get id;
  @override
  int? get dayOfWeek;
  @override
  String? get openingTime;
  @override
  String? get closingTime;
  @override
  String? get specialistId;
  @override
  @JsonKey(ignore: true)
  _$$OpeningHoursImplCopyWith<_$OpeningHoursImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
