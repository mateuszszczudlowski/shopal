part of 'register_bloc.dart';

@autoequalMixin
class RegisterState extends Equatable with _$RegisterStateAutoequalMixin {
  final String email;
  final String password;
  final String name;
  final LoadingStatus loadingStatus;
  final bool showPassword;
  final bool showNameError;

  const RegisterState({
    this.showPassword = false,
    this.showNameError = false,
    this.email = '',
    this.password = '',
    this.name = '',
    this.loadingStatus = const IdleStatus(),
  });

  RegisterState copyWith({
    bool? showPassword,
    bool? showNameError,
    String? email,
    String? password,
    String? name,
    LoadingStatus? loadingStatus,
  }) =>
      RegisterState(
        showPassword: showPassword ?? this.showPassword,
        showNameError: showNameError ?? this.showNameError,
        email: email ?? this.email,
        password: password ?? this.password,
        name: name ?? this.name,
        loadingStatus: loadingStatus ?? this.loadingStatus,
      );

  bool validateName(String name) {
    if (name.isNotEmpty) return false;
    return true;
  }
}
