import 'dart:developer';

import 'package:autoequal/autoequal.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/repositories/supabase_repository/supabase_repository.dart';
import 'package:template/src/models/user_profile.dart';
import 'package:template/src/utils/authentication_status.dart';
import 'package:template/src/utils/loading_status.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.g.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final ISupabaseRepository _supabaseRepository;
  AuthenticationBloc({
    required ISupabaseRepository supabaseRepository,
  })  : _supabaseRepository = supabaseRepository,
        super(const AuthenticationState.unknown()) {
    on<LogoutUser>(_onLogoutUser);
    on<LoginUser>(_onLoginUser);
    on<LoginUserWithGoogle>(_onLoginUserWithGoogle);
    on<LoginUserWithFacebook>(_onLoginUserWithFacebook);
    on<ShareUserData>(_onShareUserData);
    on<EmailChangedAuthentication>(_onEmailChangedAuthentication);
    on<PasswordChangedAuthentication>(_onPasswordChangedAuthentication);
    on<TurnPasswordVisibilityAuthentication>(
        _onTurnPasswordVisibilityAuthentication);
    on<ResetPassword>(_onResetPassword);
    on<ResetEmailChanged>(_onResetEmailChanged);
    on<ChangeValidationStatus>(_onChangeValidationStatus);
  }

  void _onTurnPasswordVisibilityAuthentication(
    TurnPasswordVisibilityAuthentication event,
    Emitter<AuthenticationState> emit,
  ) {
    emit(state.copyWith(showPassword: !state.showPassword));
  }

  Future<void> _onLoginUser(
      LoginUser event, Emitter<AuthenticationState> emit) async {
    try {
      // final res = await _supabaseRepository.loginUser(
      //     email: state.email!, password: state.password!);

      final res = await _supabaseRepository.loginUser(
          email: 'mateuszszczudlowski@gmail.com', password: 'Darthnemis123!');
      if (res.session!.accessToken.isNotEmpty) {
        emit(state.copyWith(
            status: AuthenticationStatus.authenticated,
            loadingStatus: const SuccessStatus()));
      }
    } catch (exception) {
      emit(state.copyWith(loadingStatus: FailedStatus(error: exception)));
      addError(exception);
    }
  }

  Future<void> _onLoginUserWithGoogle(
      LoginUserWithGoogle event, Emitter<AuthenticationState> emit) async {
    try {
      await _supabaseRepository.loginUserWithGoogle();

      emit(state.copyWith(status: AuthenticationStatus.authenticated));
    } catch (exception) {
      emit(state.copyWith(loadingStatus: FailedStatus(error: exception)));
      addError(exception);
    }
  }

  Future<void> _onLoginUserWithFacebook(
      LoginUserWithFacebook event, Emitter<AuthenticationState> emit) async {
    try {
      await _supabaseRepository.loginUserWithFacebook();

      emit(state.copyWith(status: AuthenticationStatus.authenticated));
    } catch (exception) {
      emit(state.copyWith(loadingStatus: FailedStatus(error: exception)));
      addError(exception);
    }
  }

  Future<void> _onLogoutUser(
      LogoutUser event, Emitter<AuthenticationState> emit) async {
    try {
      await _supabaseRepository.logoutUser();
      emit(state.copyWith(status: AuthenticationStatus.unauthenticated));
    } catch (e) {
      emit(state.copyWith(loadingStatus: FailedStatus(error: e)));
    }
  }

  Future<void> _onShareUserData(
      ShareUserData event, Emitter<AuthenticationState> emit) async {
    try {
      final UserProfile userProfile = UserProfile.fromJson(event.userData!);

      emit(state.copyWith(userProfile: userProfile));
    } catch (e) {
      emit(state.copyWith(loadingStatus: FailedStatus(error: e)));
    }
  }

  void _onEmailChangedAuthentication(
    EmailChangedAuthentication event,
    Emitter<AuthenticationState> emit,
  ) {
    emit(state.copyWith(email: event.newEmailValue));
  }

  void _onPasswordChangedAuthentication(
    PasswordChangedAuthentication event,
    Emitter<AuthenticationState> emit,
  ) {
    emit(state.copyWith(password: event.newPasswordValue));
  }

  void _onResetEmailChanged(
    ResetEmailChanged event,
    Emitter<AuthenticationState> emit,
  ) {
    emit(state.copyWith(resetEmail: event.newResetEmail));
  }

  void _onChangeValidationStatus(
    ChangeValidationStatus event,
    Emitter<AuthenticationState> emit,
  ) {
    emit(state.copyWith(validationStatus: const IdleStatus()));
  }

  Future<void> _onResetPassword(
      ResetPassword event, Emitter<AuthenticationState> emit) async {
    try {
      await _supabaseRepository.resetPasswordByEmail(email: state.resetEmail!);
      emit(state.copyWith(validationStatus: const SuccessStatus()));
    } catch (exception) {
      log('exception: $exception');
      emit(state.copyWith(validationStatus: FailedStatus(error: exception)));
      addError(exception);
    }
  }
}
