import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template/src/utils/loading_status.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState()) {
    on<_SearchText>(_onSearchText);
  }

  void _onSearchText(
    _SearchText event,
    Emitter<MainState> emit,
  ) {
    emit(state.copyWith(searchValue: event.text));
  }
}
