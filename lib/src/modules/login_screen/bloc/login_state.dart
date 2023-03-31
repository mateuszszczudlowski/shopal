part of 'login_bloc.dart';

@autoequalMixin
class LoginState extends Equatable with _$LoginStateAutoequalMixin {
  final String email;
  final String password;
  final LoadingStatus loadingStatus;
  final bool showPassword;

  const LoginState({
    this.showPassword = false,
    this.email = '',
    this.password = '',
    this.loadingStatus = const IdleStatus(),
  });

  LoginState copyWith({
    bool? showPassword,
    String? email,
    String? password,
    LoadingStatus? loadingStatus,
  }) =>
      LoginState(
        showPassword: showPassword ?? this.showPassword,
        email: email ?? this.email,
        password: password ?? this.password,
        loadingStatus: loadingStatus ?? this.loadingStatus,
      );
}
