// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialist_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpecialistViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Opinion> optionsList) calculateAverageRating,
    required TResult Function(String desc) getAboutInfo,
    required TResult Function(List<OpeningHours> openingHours)
        getOpeningHoursList,
    required TResult Function(List<Portfolio> portfolio) getPortfolioList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Opinion> optionsList)? calculateAverageRating,
    TResult? Function(String desc)? getAboutInfo,
    TResult? Function(List<OpeningHours> openingHours)? getOpeningHoursList,
    TResult? Function(List<Portfolio> portfolio)? getPortfolioList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Opinion> optionsList)? calculateAverageRating,
    TResult Function(String desc)? getAboutInfo,
    TResult Function(List<OpeningHours> openingHours)? getOpeningHoursList,
    TResult Function(List<Portfolio> portfolio)? getPortfolioList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CalculateAverageRating value)
        calculateAverageRating,
    required TResult Function(_GetAboutInfo value) getAboutInfo,
    required TResult Function(_GetOpeningHoursList value) getOpeningHoursList,
    required TResult Function(_GetPortfolioList value) getPortfolioList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CalculateAverageRating value)? calculateAverageRating,
    TResult? Function(_GetAboutInfo value)? getAboutInfo,
    TResult? Function(_GetOpeningHoursList value)? getOpeningHoursList,
    TResult? Function(_GetPortfolioList value)? getPortfolioList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CalculateAverageRating value)? calculateAverageRating,
    TResult Function(_GetAboutInfo value)? getAboutInfo,
    TResult Function(_GetOpeningHoursList value)? getOpeningHoursList,
    TResult Function(_GetPortfolioList value)? getPortfolioList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialistViewEventCopyWith<$Res> {
  factory $SpecialistViewEventCopyWith(
          SpecialistViewEvent value, $Res Function(SpecialistViewEvent) then) =
      _$SpecialistViewEventCopyWithImpl<$Res, SpecialistViewEvent>;
}

/// @nodoc
class _$SpecialistViewEventCopyWithImpl<$Res, $Val extends SpecialistViewEvent>
    implements $SpecialistViewEventCopyWith<$Res> {
  _$SpecialistViewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CalculateAverageRatingImplCopyWith<$Res> {
  factory _$$CalculateAverageRatingImplCopyWith(
          _$CalculateAverageRatingImpl value,
          $Res Function(_$CalculateAverageRatingImpl) then) =
      __$$CalculateAverageRatingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Opinion> optionsList});
}

/// @nodoc
class __$$CalculateAverageRatingImplCopyWithImpl<$Res>
    extends _$SpecialistViewEventCopyWithImpl<$Res,
        _$CalculateAverageRatingImpl>
    implements _$$CalculateAverageRatingImplCopyWith<$Res> {
  __$$CalculateAverageRatingImplCopyWithImpl(
      _$CalculateAverageRatingImpl _value,
      $Res Function(_$CalculateAverageRatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionsList = null,
  }) {
    return _then(_$CalculateAverageRatingImpl(
      null == optionsList
          ? _value._optionsList
          : optionsList // ignore: cast_nullable_to_non_nullable
              as List<Opinion>,
    ));
  }
}

/// @nodoc

class _$CalculateAverageRatingImpl implements _CalculateAverageRating {
  const _$CalculateAverageRatingImpl(final List<Opinion> optionsList)
      : _optionsList = optionsList;

  final List<Opinion> _optionsList;
  @override
  List<Opinion> get optionsList {
    if (_optionsList is EqualUnmodifiableListView) return _optionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_optionsList);
  }

  @override
  String toString() {
    return 'SpecialistViewEvent.calculateAverageRating(optionsList: $optionsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculateAverageRatingImpl &&
            const DeepCollectionEquality()
                .equals(other._optionsList, _optionsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_optionsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculateAverageRatingImplCopyWith<_$CalculateAverageRatingImpl>
      get copyWith => __$$CalculateAverageRatingImplCopyWithImpl<
          _$CalculateAverageRatingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Opinion> optionsList) calculateAverageRating,
    required TResult Function(String desc) getAboutInfo,
    required TResult Function(List<OpeningHours> openingHours)
        getOpeningHoursList,
    required TResult Function(List<Portfolio> portfolio) getPortfolioList,
  }) {
    return calculateAverageRating(optionsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Opinion> optionsList)? calculateAverageRating,
    TResult? Function(String desc)? getAboutInfo,
    TResult? Function(List<OpeningHours> openingHours)? getOpeningHoursList,
    TResult? Function(List<Portfolio> portfolio)? getPortfolioList,
  }) {
    return calculateAverageRating?.call(optionsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Opinion> optionsList)? calculateAverageRating,
    TResult Function(String desc)? getAboutInfo,
    TResult Function(List<OpeningHours> openingHours)? getOpeningHoursList,
    TResult Function(List<Portfolio> portfolio)? getPortfolioList,
    required TResult orElse(),
  }) {
    if (calculateAverageRating != null) {
      return calculateAverageRating(optionsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CalculateAverageRating value)
        calculateAverageRating,
    required TResult Function(_GetAboutInfo value) getAboutInfo,
    required TResult Function(_GetOpeningHoursList value) getOpeningHoursList,
    required TResult Function(_GetPortfolioList value) getPortfolioList,
  }) {
    return calculateAverageRating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CalculateAverageRating value)? calculateAverageRating,
    TResult? Function(_GetAboutInfo value)? getAboutInfo,
    TResult? Function(_GetOpeningHoursList value)? getOpeningHoursList,
    TResult? Function(_GetPortfolioList value)? getPortfolioList,
  }) {
    return calculateAverageRating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CalculateAverageRating value)? calculateAverageRating,
    TResult Function(_GetAboutInfo value)? getAboutInfo,
    TResult Function(_GetOpeningHoursList value)? getOpeningHoursList,
    TResult Function(_GetPortfolioList value)? getPortfolioList,
    required TResult orElse(),
  }) {
    if (calculateAverageRating != null) {
      return calculateAverageRating(this);
    }
    return orElse();
  }
}

abstract class _CalculateAverageRating implements SpecialistViewEvent {
  const factory _CalculateAverageRating(final List<Opinion> optionsList) =
      _$CalculateAverageRatingImpl;

  List<Opinion> get optionsList;
  @JsonKey(ignore: true)
  _$$CalculateAverageRatingImplCopyWith<_$CalculateAverageRatingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAboutInfoImplCopyWith<$Res> {
  factory _$$GetAboutInfoImplCopyWith(
          _$GetAboutInfoImpl value, $Res Function(_$GetAboutInfoImpl) then) =
      __$$GetAboutInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String desc});
}

/// @nodoc
class __$$GetAboutInfoImplCopyWithImpl<$Res>
    extends _$SpecialistViewEventCopyWithImpl<$Res, _$GetAboutInfoImpl>
    implements _$$GetAboutInfoImplCopyWith<$Res> {
  __$$GetAboutInfoImplCopyWithImpl(
      _$GetAboutInfoImpl _value, $Res Function(_$GetAboutInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desc = null,
  }) {
    return _then(_$GetAboutInfoImpl(
      null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAboutInfoImpl implements _GetAboutInfo {
  const _$GetAboutInfoImpl(this.desc);

  @override
  final String desc;

  @override
  String toString() {
    return 'SpecialistViewEvent.getAboutInfo(desc: $desc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAboutInfoImpl &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, desc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAboutInfoImplCopyWith<_$GetAboutInfoImpl> get copyWith =>
      __$$GetAboutInfoImplCopyWithImpl<_$GetAboutInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Opinion> optionsList) calculateAverageRating,
    required TResult Function(String desc) getAboutInfo,
    required TResult Function(List<OpeningHours> openingHours)
        getOpeningHoursList,
    required TResult Function(List<Portfolio> portfolio) getPortfolioList,
  }) {
    return getAboutInfo(desc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Opinion> optionsList)? calculateAverageRating,
    TResult? Function(String desc)? getAboutInfo,
    TResult? Function(List<OpeningHours> openingHours)? getOpeningHoursList,
    TResult? Function(List<Portfolio> portfolio)? getPortfolioList,
  }) {
    return getAboutInfo?.call(desc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Opinion> optionsList)? calculateAverageRating,
    TResult Function(String desc)? getAboutInfo,
    TResult Function(List<OpeningHours> openingHours)? getOpeningHoursList,
    TResult Function(List<Portfolio> portfolio)? getPortfolioList,
    required TResult orElse(),
  }) {
    if (getAboutInfo != null) {
      return getAboutInfo(desc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CalculateAverageRating value)
        calculateAverageRating,
    required TResult Function(_GetAboutInfo value) getAboutInfo,
    required TResult Function(_GetOpeningHoursList value) getOpeningHoursList,
    required TResult Function(_GetPortfolioList value) getPortfolioList,
  }) {
    return getAboutInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CalculateAverageRating value)? calculateAverageRating,
    TResult? Function(_GetAboutInfo value)? getAboutInfo,
    TResult? Function(_GetOpeningHoursList value)? getOpeningHoursList,
    TResult? Function(_GetPortfolioList value)? getPortfolioList,
  }) {
    return getAboutInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CalculateAverageRating value)? calculateAverageRating,
    TResult Function(_GetAboutInfo value)? getAboutInfo,
    TResult Function(_GetOpeningHoursList value)? getOpeningHoursList,
    TResult Function(_GetPortfolioList value)? getPortfolioList,
    required TResult orElse(),
  }) {
    if (getAboutInfo != null) {
      return getAboutInfo(this);
    }
    return orElse();
  }
}

abstract class _GetAboutInfo implements SpecialistViewEvent {
  const factory _GetAboutInfo(final String desc) = _$GetAboutInfoImpl;

  String get desc;
  @JsonKey(ignore: true)
  _$$GetAboutInfoImplCopyWith<_$GetAboutInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOpeningHoursListImplCopyWith<$Res> {
  factory _$$GetOpeningHoursListImplCopyWith(_$GetOpeningHoursListImpl value,
          $Res Function(_$GetOpeningHoursListImpl) then) =
      __$$GetOpeningHoursListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OpeningHours> openingHours});
}

/// @nodoc
class __$$GetOpeningHoursListImplCopyWithImpl<$Res>
    extends _$SpecialistViewEventCopyWithImpl<$Res, _$GetOpeningHoursListImpl>
    implements _$$GetOpeningHoursListImplCopyWith<$Res> {
  __$$GetOpeningHoursListImplCopyWithImpl(_$GetOpeningHoursListImpl _value,
      $Res Function(_$GetOpeningHoursListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openingHours = null,
  }) {
    return _then(_$GetOpeningHoursListImpl(
      null == openingHours
          ? _value._openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as List<OpeningHours>,
    ));
  }
}

/// @nodoc

class _$GetOpeningHoursListImpl implements _GetOpeningHoursList {
  const _$GetOpeningHoursListImpl(final List<OpeningHours> openingHours)
      : _openingHours = openingHours;

  final List<OpeningHours> _openingHours;
  @override
  List<OpeningHours> get openingHours {
    if (_openingHours is EqualUnmodifiableListView) return _openingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_openingHours);
  }

  @override
  String toString() {
    return 'SpecialistViewEvent.getOpeningHoursList(openingHours: $openingHours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOpeningHoursListImpl &&
            const DeepCollectionEquality()
                .equals(other._openingHours, _openingHours));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_openingHours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOpeningHoursListImplCopyWith<_$GetOpeningHoursListImpl> get copyWith =>
      __$$GetOpeningHoursListImplCopyWithImpl<_$GetOpeningHoursListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Opinion> optionsList) calculateAverageRating,
    required TResult Function(String desc) getAboutInfo,
    required TResult Function(List<OpeningHours> openingHours)
        getOpeningHoursList,
    required TResult Function(List<Portfolio> portfolio) getPortfolioList,
  }) {
    return getOpeningHoursList(openingHours);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Opinion> optionsList)? calculateAverageRating,
    TResult? Function(String desc)? getAboutInfo,
    TResult? Function(List<OpeningHours> openingHours)? getOpeningHoursList,
    TResult? Function(List<Portfolio> portfolio)? getPortfolioList,
  }) {
    return getOpeningHoursList?.call(openingHours);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Opinion> optionsList)? calculateAverageRating,
    TResult Function(String desc)? getAboutInfo,
    TResult Function(List<OpeningHours> openingHours)? getOpeningHoursList,
    TResult Function(List<Portfolio> portfolio)? getPortfolioList,
    required TResult orElse(),
  }) {
    if (getOpeningHoursList != null) {
      return getOpeningHoursList(openingHours);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CalculateAverageRating value)
        calculateAverageRating,
    required TResult Function(_GetAboutInfo value) getAboutInfo,
    required TResult Function(_GetOpeningHoursList value) getOpeningHoursList,
    required TResult Function(_GetPortfolioList value) getPortfolioList,
  }) {
    return getOpeningHoursList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CalculateAverageRating value)? calculateAverageRating,
    TResult? Function(_GetAboutInfo value)? getAboutInfo,
    TResult? Function(_GetOpeningHoursList value)? getOpeningHoursList,
    TResult? Function(_GetPortfolioList value)? getPortfolioList,
  }) {
    return getOpeningHoursList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CalculateAverageRating value)? calculateAverageRating,
    TResult Function(_GetAboutInfo value)? getAboutInfo,
    TResult Function(_GetOpeningHoursList value)? getOpeningHoursList,
    TResult Function(_GetPortfolioList value)? getPortfolioList,
    required TResult orElse(),
  }) {
    if (getOpeningHoursList != null) {
      return getOpeningHoursList(this);
    }
    return orElse();
  }
}

abstract class _GetOpeningHoursList implements SpecialistViewEvent {
  const factory _GetOpeningHoursList(final List<OpeningHours> openingHours) =
      _$GetOpeningHoursListImpl;

  List<OpeningHours> get openingHours;
  @JsonKey(ignore: true)
  _$$GetOpeningHoursListImplCopyWith<_$GetOpeningHoursListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPortfolioListImplCopyWith<$Res> {
  factory _$$GetPortfolioListImplCopyWith(_$GetPortfolioListImpl value,
          $Res Function(_$GetPortfolioListImpl) then) =
      __$$GetPortfolioListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Portfolio> portfolio});
}

/// @nodoc
class __$$GetPortfolioListImplCopyWithImpl<$Res>
    extends _$SpecialistViewEventCopyWithImpl<$Res, _$GetPortfolioListImpl>
    implements _$$GetPortfolioListImplCopyWith<$Res> {
  __$$GetPortfolioListImplCopyWithImpl(_$GetPortfolioListImpl _value,
      $Res Function(_$GetPortfolioListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolio = null,
  }) {
    return _then(_$GetPortfolioListImpl(
      null == portfolio
          ? _value._portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as List<Portfolio>,
    ));
  }
}

/// @nodoc

class _$GetPortfolioListImpl implements _GetPortfolioList {
  const _$GetPortfolioListImpl(final List<Portfolio> portfolio)
      : _portfolio = portfolio;

  final List<Portfolio> _portfolio;
  @override
  List<Portfolio> get portfolio {
    if (_portfolio is EqualUnmodifiableListView) return _portfolio;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_portfolio);
  }

  @override
  String toString() {
    return 'SpecialistViewEvent.getPortfolioList(portfolio: $portfolio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPortfolioListImpl &&
            const DeepCollectionEquality()
                .equals(other._portfolio, _portfolio));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_portfolio));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPortfolioListImplCopyWith<_$GetPortfolioListImpl> get copyWith =>
      __$$GetPortfolioListImplCopyWithImpl<_$GetPortfolioListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Opinion> optionsList) calculateAverageRating,
    required TResult Function(String desc) getAboutInfo,
    required TResult Function(List<OpeningHours> openingHours)
        getOpeningHoursList,
    required TResult Function(List<Portfolio> portfolio) getPortfolioList,
  }) {
    return getPortfolioList(portfolio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Opinion> optionsList)? calculateAverageRating,
    TResult? Function(String desc)? getAboutInfo,
    TResult? Function(List<OpeningHours> openingHours)? getOpeningHoursList,
    TResult? Function(List<Portfolio> portfolio)? getPortfolioList,
  }) {
    return getPortfolioList?.call(portfolio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Opinion> optionsList)? calculateAverageRating,
    TResult Function(String desc)? getAboutInfo,
    TResult Function(List<OpeningHours> openingHours)? getOpeningHoursList,
    TResult Function(List<Portfolio> portfolio)? getPortfolioList,
    required TResult orElse(),
  }) {
    if (getPortfolioList != null) {
      return getPortfolioList(portfolio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CalculateAverageRating value)
        calculateAverageRating,
    required TResult Function(_GetAboutInfo value) getAboutInfo,
    required TResult Function(_GetOpeningHoursList value) getOpeningHoursList,
    required TResult Function(_GetPortfolioList value) getPortfolioList,
  }) {
    return getPortfolioList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CalculateAverageRating value)? calculateAverageRating,
    TResult? Function(_GetAboutInfo value)? getAboutInfo,
    TResult? Function(_GetOpeningHoursList value)? getOpeningHoursList,
    TResult? Function(_GetPortfolioList value)? getPortfolioList,
  }) {
    return getPortfolioList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CalculateAverageRating value)? calculateAverageRating,
    TResult Function(_GetAboutInfo value)? getAboutInfo,
    TResult Function(_GetOpeningHoursList value)? getOpeningHoursList,
    TResult Function(_GetPortfolioList value)? getPortfolioList,
    required TResult orElse(),
  }) {
    if (getPortfolioList != null) {
      return getPortfolioList(this);
    }
    return orElse();
  }
}

abstract class _GetPortfolioList implements SpecialistViewEvent {
  const factory _GetPortfolioList(final List<Portfolio> portfolio) =
      _$GetPortfolioListImpl;

  List<Portfolio> get portfolio;
  @JsonKey(ignore: true)
  _$$GetPortfolioListImplCopyWith<_$GetPortfolioListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpecialistViewState {
  LoadingStatus get loadingStatus => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  String? get descriptionFirstPart => throw _privateConstructorUsedError;
  String? get descriptionSecondPart => throw _privateConstructorUsedError;
  List<OpeningHours>? get openingHoursUIList =>
      throw _privateConstructorUsedError;
  List<Portfolio>? get portfolioList => throw _privateConstructorUsedError;
  List<String>? get imageList => throw _privateConstructorUsedError;
  int? get portfolioShowcases => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpecialistViewStateCopyWith<SpecialistViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialistViewStateCopyWith<$Res> {
  factory $SpecialistViewStateCopyWith(
          SpecialistViewState value, $Res Function(SpecialistViewState) then) =
      _$SpecialistViewStateCopyWithImpl<$Res, SpecialistViewState>;
  @useResult
  $Res call(
      {LoadingStatus loadingStatus,
      double averageRating,
      String? descriptionFirstPart,
      String? descriptionSecondPart,
      List<OpeningHours>? openingHoursUIList,
      List<Portfolio>? portfolioList,
      List<String>? imageList,
      int? portfolioShowcases});
}

/// @nodoc
class _$SpecialistViewStateCopyWithImpl<$Res, $Val extends SpecialistViewState>
    implements $SpecialistViewStateCopyWith<$Res> {
  _$SpecialistViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
    Object? averageRating = null,
    Object? descriptionFirstPart = freezed,
    Object? descriptionSecondPart = freezed,
    Object? openingHoursUIList = freezed,
    Object? portfolioList = freezed,
    Object? imageList = freezed,
    Object? portfolioShowcases = freezed,
  }) {
    return _then(_value.copyWith(
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      descriptionFirstPart: freezed == descriptionFirstPart
          ? _value.descriptionFirstPart
          : descriptionFirstPart // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionSecondPart: freezed == descriptionSecondPart
          ? _value.descriptionSecondPart
          : descriptionSecondPart // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHoursUIList: freezed == openingHoursUIList
          ? _value.openingHoursUIList
          : openingHoursUIList // ignore: cast_nullable_to_non_nullable
              as List<OpeningHours>?,
      portfolioList: freezed == portfolioList
          ? _value.portfolioList
          : portfolioList // ignore: cast_nullable_to_non_nullable
              as List<Portfolio>?,
      imageList: freezed == imageList
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      portfolioShowcases: freezed == portfolioShowcases
          ? _value.portfolioShowcases
          : portfolioShowcases // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialistViewStateImplCopyWith<$Res>
    implements $SpecialistViewStateCopyWith<$Res> {
  factory _$$SpecialistViewStateImplCopyWith(_$SpecialistViewStateImpl value,
          $Res Function(_$SpecialistViewStateImpl) then) =
      __$$SpecialistViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingStatus loadingStatus,
      double averageRating,
      String? descriptionFirstPart,
      String? descriptionSecondPart,
      List<OpeningHours>? openingHoursUIList,
      List<Portfolio>? portfolioList,
      List<String>? imageList,
      int? portfolioShowcases});
}

/// @nodoc
class __$$SpecialistViewStateImplCopyWithImpl<$Res>
    extends _$SpecialistViewStateCopyWithImpl<$Res, _$SpecialistViewStateImpl>
    implements _$$SpecialistViewStateImplCopyWith<$Res> {
  __$$SpecialistViewStateImplCopyWithImpl(_$SpecialistViewStateImpl _value,
      $Res Function(_$SpecialistViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
    Object? averageRating = null,
    Object? descriptionFirstPart = freezed,
    Object? descriptionSecondPart = freezed,
    Object? openingHoursUIList = freezed,
    Object? portfolioList = freezed,
    Object? imageList = freezed,
    Object? portfolioShowcases = freezed,
  }) {
    return _then(_$SpecialistViewStateImpl(
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      descriptionFirstPart: freezed == descriptionFirstPart
          ? _value.descriptionFirstPart
          : descriptionFirstPart // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionSecondPart: freezed == descriptionSecondPart
          ? _value.descriptionSecondPart
          : descriptionSecondPart // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHoursUIList: freezed == openingHoursUIList
          ? _value._openingHoursUIList
          : openingHoursUIList // ignore: cast_nullable_to_non_nullable
              as List<OpeningHours>?,
      portfolioList: freezed == portfolioList
          ? _value._portfolioList
          : portfolioList // ignore: cast_nullable_to_non_nullable
              as List<Portfolio>?,
      imageList: freezed == imageList
          ? _value._imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      portfolioShowcases: freezed == portfolioShowcases
          ? _value.portfolioShowcases
          : portfolioShowcases // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SpecialistViewStateImpl implements _SpecialistViewState {
  const _$SpecialistViewStateImpl(
      {this.loadingStatus = const IdleStatus(),
      this.averageRating = 5.0,
      this.descriptionFirstPart = '',
      this.descriptionSecondPart = '',
      final List<OpeningHours>? openingHoursUIList = const [],
      final List<Portfolio>? portfolioList = const [],
      final List<String>? imageList = const [],
      this.portfolioShowcases = 0})
      : _openingHoursUIList = openingHoursUIList,
        _portfolioList = portfolioList,
        _imageList = imageList;

  @override
  @JsonKey()
  final LoadingStatus loadingStatus;
  @override
  @JsonKey()
  final double averageRating;
  @override
  @JsonKey()
  final String? descriptionFirstPart;
  @override
  @JsonKey()
  final String? descriptionSecondPart;
  final List<OpeningHours>? _openingHoursUIList;
  @override
  @JsonKey()
  List<OpeningHours>? get openingHoursUIList {
    final value = _openingHoursUIList;
    if (value == null) return null;
    if (_openingHoursUIList is EqualUnmodifiableListView)
      return _openingHoursUIList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Portfolio>? _portfolioList;
  @override
  @JsonKey()
  List<Portfolio>? get portfolioList {
    final value = _portfolioList;
    if (value == null) return null;
    if (_portfolioList is EqualUnmodifiableListView) return _portfolioList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _imageList;
  @override
  @JsonKey()
  List<String>? get imageList {
    final value = _imageList;
    if (value == null) return null;
    if (_imageList is EqualUnmodifiableListView) return _imageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int? portfolioShowcases;

  @override
  String toString() {
    return 'SpecialistViewState(loadingStatus: $loadingStatus, averageRating: $averageRating, descriptionFirstPart: $descriptionFirstPart, descriptionSecondPart: $descriptionSecondPart, openingHoursUIList: $openingHoursUIList, portfolioList: $portfolioList, imageList: $imageList, portfolioShowcases: $portfolioShowcases)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialistViewStateImpl &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.descriptionFirstPart, descriptionFirstPart) ||
                other.descriptionFirstPart == descriptionFirstPart) &&
            (identical(other.descriptionSecondPart, descriptionSecondPart) ||
                other.descriptionSecondPart == descriptionSecondPart) &&
            const DeepCollectionEquality()
                .equals(other._openingHoursUIList, _openingHoursUIList) &&
            const DeepCollectionEquality()
                .equals(other._portfolioList, _portfolioList) &&
            const DeepCollectionEquality()
                .equals(other._imageList, _imageList) &&
            (identical(other.portfolioShowcases, portfolioShowcases) ||
                other.portfolioShowcases == portfolioShowcases));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loadingStatus,
      averageRating,
      descriptionFirstPart,
      descriptionSecondPart,
      const DeepCollectionEquality().hash(_openingHoursUIList),
      const DeepCollectionEquality().hash(_portfolioList),
      const DeepCollectionEquality().hash(_imageList),
      portfolioShowcases);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialistViewStateImplCopyWith<_$SpecialistViewStateImpl> get copyWith =>
      __$$SpecialistViewStateImplCopyWithImpl<_$SpecialistViewStateImpl>(
          this, _$identity);
}

abstract class _SpecialistViewState implements SpecialistViewState {
  const factory _SpecialistViewState(
      {final LoadingStatus loadingStatus,
      final double averageRating,
      final String? descriptionFirstPart,
      final String? descriptionSecondPart,
      final List<OpeningHours>? openingHoursUIList,
      final List<Portfolio>? portfolioList,
      final List<String>? imageList,
      final int? portfolioShowcases}) = _$SpecialistViewStateImpl;

  @override
  LoadingStatus get loadingStatus;
  @override
  double get averageRating;
  @override
  String? get descriptionFirstPart;
  @override
  String? get descriptionSecondPart;
  @override
  List<OpeningHours>? get openingHoursUIList;
  @override
  List<Portfolio>? get portfolioList;
  @override
  List<String>? get imageList;
  @override
  int? get portfolioShowcases;
  @override
  @JsonKey(ignore: true)
  _$$SpecialistViewStateImplCopyWith<_$SpecialistViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
