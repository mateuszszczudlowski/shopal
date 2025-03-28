part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.searchText(String text) = _SearchText;
}
