part of 'specialist_view_bloc.dart';

@freezed
class SpecialistViewEvent with _$SpecialistViewEvent {
  const factory SpecialistViewEvent.calculateAverageRating(
      List<Opinion> optionsList) = _CalculateAverageRating;
  const factory SpecialistViewEvent.getAboutInfo(String desc) = _GetAboutInfo;
  const factory SpecialistViewEvent.getOpeningHoursList(
      List<OpeningHours> openingHours) = _GetOpeningHoursList;
  const factory SpecialistViewEvent.getPortfolioList(
      List<Portfolio> portfolio) = _GetPortfolioList;
}
