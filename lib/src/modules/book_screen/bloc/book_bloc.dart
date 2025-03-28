import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template/src/utils/loading_status.dart';

part 'book_event.dart';
part 'book_state.dart';
part 'book_bloc.freezed.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  BookBloc() : super(const BookState()) {
    on<_GetWorkingHours>(_onGetWorkingHours);
  }

  void _onGetWorkingHours(
    _GetWorkingHours event,
    Emitter<BookState> emit,
  ) {
    emit(state.copyWith(workingHours: event.workingHour));
  }
}
