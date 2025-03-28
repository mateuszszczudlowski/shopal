part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(IdleStatus()) LoadingStatus loadingStatus,
    @Default('') String searchValue,
  }) = _MainState;
}
