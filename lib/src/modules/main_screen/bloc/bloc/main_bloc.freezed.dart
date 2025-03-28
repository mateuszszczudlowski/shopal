// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  String get text => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchText value) searchText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchText value)? searchText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchText value)? searchText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainEventCopyWith<MainEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchTextImplCopyWith<$Res>
    implements $MainEventCopyWith<$Res> {
  factory _$$SearchTextImplCopyWith(
          _$SearchTextImpl value, $Res Function(_$SearchTextImpl) then) =
      __$$SearchTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SearchTextImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$SearchTextImpl>
    implements _$$SearchTextImplCopyWith<$Res> {
  __$$SearchTextImplCopyWithImpl(
      _$SearchTextImpl _value, $Res Function(_$SearchTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$SearchTextImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchTextImpl implements _SearchText {
  const _$SearchTextImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'MainEvent.searchText(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTextImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTextImplCopyWith<_$SearchTextImpl> get copyWith =>
      __$$SearchTextImplCopyWithImpl<_$SearchTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchText,
  }) {
    return searchText(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchText,
  }) {
    return searchText?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchText,
    required TResult orElse(),
  }) {
    if (searchText != null) {
      return searchText(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchText value) searchText,
  }) {
    return searchText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchText value)? searchText,
  }) {
    return searchText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchText value)? searchText,
    required TResult orElse(),
  }) {
    if (searchText != null) {
      return searchText(this);
    }
    return orElse();
  }
}

abstract class _SearchText implements MainEvent {
  const factory _SearchText(final String text) = _$SearchTextImpl;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$SearchTextImplCopyWith<_$SearchTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  LoadingStatus get loadingStatus => throw _privateConstructorUsedError;
  String get searchValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call({LoadingStatus loadingStatus, String searchValue});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
    Object? searchValue = null,
  }) {
    return _then(_value.copyWith(
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoadingStatus loadingStatus, String searchValue});
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
    Object? searchValue = null,
  }) {
    return _then(_$MainStateImpl(
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainStateImpl implements _MainState {
  const _$MainStateImpl(
      {this.loadingStatus = const IdleStatus(), this.searchValue = ''});

  @override
  @JsonKey()
  final LoadingStatus loadingStatus;
  @override
  @JsonKey()
  final String searchValue;

  @override
  String toString() {
    return 'MainState(loadingStatus: $loadingStatus, searchValue: $searchValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus) &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingStatus, searchValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);
}

abstract class _MainState implements MainState {
  const factory _MainState(
      {final LoadingStatus loadingStatus,
      final String searchValue}) = _$MainStateImpl;

  @override
  LoadingStatus get loadingStatus;
  @override
  String get searchValue;
  @override
  @JsonKey(ignore: true)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
