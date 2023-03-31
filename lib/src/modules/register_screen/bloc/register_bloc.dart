import 'dart:developer';

import 'package:autoequal/autoequal.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/repositories/supabase_repository/supabase_repository.dart';
import 'package:template/src/utils/loading_status.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.g.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final ISupabaseRepository _supabaseRepository;
  RegisterBloc({
    required ISupabaseRepository supabaseRepository,
  })  : _supabaseRepository = supabaseRepository,
        super(const RegisterState()) {
    on<EmailChanged>(_onEmailChanged);
    on<NameChanged>(_onNameChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<RegisterUser>(_onRegisterUser);
    on<TurnPasswordVisibility>(_onTurnPasswordVisibility);
    on<ShowNameError>(_onShowNameError);
  }

  void _onShowNameError(
    ShowNameError event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(showNameError: state.validateName(state.name)));
  }

  void _onTurnPasswordVisibility(
    TurnPasswordVisibility event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(showPassword: !state.showPassword));
  }

  void _onEmailChanged(
    EmailChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(email: event.newEmailValue));
  }

  void _onNameChanged(
    NameChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(name: event.newNameValue));
  }

  void _onPasswordChanged(
    PasswordChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(password: event.newPasswordValue));
  }

  Future<void> _onRegisterUser(
      RegisterUser event, Emitter<RegisterState> emit) async {
    log(state.email);
    log(state.password);
    log(state.name);
    try {
      await _supabaseRepository.registerUser(
          email: state.email, password: state.password, name: state.name);
      emit(state.copyWith(loadingStatus: const SuccessStatus()));
    } catch (e) {
      emit(state.copyWith(loadingStatus: FailedStatus(error: e)));
    }
  }
}
