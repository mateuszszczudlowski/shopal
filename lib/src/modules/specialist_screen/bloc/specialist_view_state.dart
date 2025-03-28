part of 'specialist_view_bloc.dart';

@freezed
class SpecialistViewState with _$SpecialistViewState {
  const factory SpecialistViewState({
    @Default(IdleStatus()) LoadingStatus loadingStatus,
    @Default(5.0) double averageRating,
    @Default('') String? descriptionFirstPart,
    @Default('') String? descriptionSecondPart,
    @Default([]) List<OpeningHours>? openingHoursUIList,
    @Default([]) List<Portfolio>? portfolioList,
    @Default([]) List<String>? imageList,
    @Default(0) int? portfolioShowcases,
  }) = _SpecialistViewState;
}
