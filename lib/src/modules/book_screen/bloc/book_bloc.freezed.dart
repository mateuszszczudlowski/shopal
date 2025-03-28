// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookEvent {
  String get workingHour => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String workingHour) getWorkingHours,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String workingHour)? getWorkingHours,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String workingHour)? getWorkingHours,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWorkingHours value) getWorkingHours,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWorkingHours value)? getWorkingHours,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWorkingHours value)? getWorkingHours,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookEventCopyWith<BookEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookEventCopyWith<$Res> {
  factory $BookEventCopyWith(BookEvent value, $Res Function(BookEvent) then) =
      _$BookEventCopyWithImpl<$Res, BookEvent>;
  @useResult
  $Res call({String workingHour});
}

/// @nodoc
class _$BookEventCopyWithImpl<$Res, $Val extends BookEvent>
    implements $BookEventCopyWith<$Res> {
  _$BookEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingHour = null,
  }) {
    return _then(_value.copyWith(
      workingHour: null == workingHour
          ? _value.workingHour
          : workingHour // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetWorkingHoursImplCopyWith<$Res>
    implements $BookEventCopyWith<$Res> {
  factory _$$GetWorkingHoursImplCopyWith(_$GetWorkingHoursImpl value,
          $Res Function(_$GetWorkingHoursImpl) then) =
      __$$GetWorkingHoursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String workingHour});
}

/// @nodoc
class __$$GetWorkingHoursImplCopyWithImpl<$Res>
    extends _$BookEventCopyWithImpl<$Res, _$GetWorkingHoursImpl>
    implements _$$GetWorkingHoursImplCopyWith<$Res> {
  __$$GetWorkingHoursImplCopyWithImpl(
      _$GetWorkingHoursImpl _value, $Res Function(_$GetWorkingHoursImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingHour = null,
  }) {
    return _then(_$GetWorkingHoursImpl(
      null == workingHour
          ? _value.workingHour
          : workingHour // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetWorkingHoursImpl implements _GetWorkingHours {
  const _$GetWorkingHoursImpl(this.workingHour);

  @override
  final String workingHour;

  @override
  String toString() {
    return 'BookEvent.getWorkingHours(workingHour: $workingHour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWorkingHoursImpl &&
            (identical(other.workingHour, workingHour) ||
                other.workingHour == workingHour));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workingHour);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWorkingHoursImplCopyWith<_$GetWorkingHoursImpl> get copyWith =>
      __$$GetWorkingHoursImplCopyWithImpl<_$GetWorkingHoursImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String workingHour) getWorkingHours,
  }) {
    return getWorkingHours(workingHour);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String workingHour)? getWorkingHours,
  }) {
    return getWorkingHours?.call(workingHour);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String workingHour)? getWorkingHours,
    required TResult orElse(),
  }) {
    if (getWorkingHours != null) {
      return getWorkingHours(workingHour);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWorkingHours value) getWorkingHours,
  }) {
    return getWorkingHours(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWorkingHours value)? getWorkingHours,
  }) {
    return getWorkingHours?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWorkingHours value)? getWorkingHours,
    required TResult orElse(),
  }) {
    if (getWorkingHours != null) {
      return getWorkingHours(this);
    }
    return orElse();
  }
}

abstract class _GetWorkingHours implements BookEvent {
  const factory _GetWorkingHours(final String workingHour) =
      _$GetWorkingHoursImpl;

  @override
  String get workingHour;
  @override
  @JsonKey(ignore: true)
  _$$GetWorkingHoursImplCopyWith<_$GetWorkingHoursImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookState {
  LoadingStatus get loadingStatus => throw _privateConstructorUsedError;
  String get workingHours => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookStateCopyWith<BookState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStateCopyWith<$Res> {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) then) =
      _$BookStateCopyWithImpl<$Res, BookState>;
  @useResult
  $Res call({LoadingStatus loadingStatus, String workingHours});
}

/// @nodoc
class _$BookStateCopyWithImpl<$Res, $Val extends BookState>
    implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
    Object? workingHours = null,
  }) {
    return _then(_value.copyWith(
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      workingHours: null == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookStateImplCopyWith<$Res>
    implements $BookStateCopyWith<$Res> {
  factory _$$BookStateImplCopyWith(
          _$BookStateImpl value, $Res Function(_$BookStateImpl) then) =
      __$$BookStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoadingStatus loadingStatus, String workingHours});
}

/// @nodoc
class __$$BookStateImplCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$BookStateImpl>
    implements _$$BookStateImplCopyWith<$Res> {
  __$$BookStateImplCopyWithImpl(
      _$BookStateImpl _value, $Res Function(_$BookStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
    Object? workingHours = null,
  }) {
    return _then(_$BookStateImpl(
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      workingHours: null == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookStateImpl implements _BookState {
  const _$BookStateImpl(
      {this.loadingStatus = const IdleStatus(), this.workingHours = ''});

  @override
  @JsonKey()
  final LoadingStatus loadingStatus;
  @override
  @JsonKey()
  final String workingHours;

  @override
  String toString() {
    return 'BookState(loadingStatus: $loadingStatus, workingHours: $workingHours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookStateImpl &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus) &&
            (identical(other.workingHours, workingHours) ||
                other.workingHours == workingHours));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingStatus, workingHours);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookStateImplCopyWith<_$BookStateImpl> get copyWith =>
      __$$BookStateImplCopyWithImpl<_$BookStateImpl>(this, _$identity);
}

abstract class _BookState implements BookState {
  const factory _BookState(
      {final LoadingStatus loadingStatus,
      final String workingHours}) = _$BookStateImpl;

  @override
  LoadingStatus get loadingStatus;
  @override
  String get workingHours;
  @override
  @JsonKey(ignore: true)
  _$$BookStateImplCopyWith<_$BookStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
