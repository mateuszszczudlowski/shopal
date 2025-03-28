part of 'book_bloc.dart';

@freezed
class BookEvent with _$BookEvent {
  const factory BookEvent.getWorkingHours(String workingHour) =
      _GetWorkingHours;
}
