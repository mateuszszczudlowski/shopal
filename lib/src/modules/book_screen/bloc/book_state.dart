part of 'book_bloc.dart';

@freezed
class BookState with _$BookState {
  const factory BookState({
    @Default(IdleStatus()) LoadingStatus loadingStatus,
    @Default('') String workingHours,
  }) = _BookState;
}
