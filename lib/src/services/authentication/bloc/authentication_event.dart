part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object?> get props => [];
}

@autoequalMixin
class LoginUser extends AuthenticationEvent with _$LoginUserAutoequalMixin {
  const LoginUser();
}

@autoequalMixin
class LoginUserWithGoogle extends AuthenticationEvent
    with _$LoginUserAutoequalMixin {
  const LoginUserWithGoogle();
}

@autoequalMixin
class LoginUserWithFacebook extends AuthenticationEvent
    with _$LoginUserAutoequalMixin {
  const LoginUserWithFacebook();
}

@autoequalMixin
class LogoutUser extends AuthenticationEvent with _$LogoutUserAutoequalMixin {
  const LogoutUser();
}

@autoequalMixin
class ShareUserData extends AuthenticationEvent
    with _$ShareUserDataAutoequalMixin {
  final Map<String, dynamic>? userData;
  const ShareUserData(this.userData);
}

@autoequalMixin
class EmailChangedAuthentication extends AuthenticationEvent
    with _$EmailChangedAuthenticationAutoequalMixin {
  final String newEmailValue;

  const EmailChangedAuthentication(this.newEmailValue);
}

@autoequalMixin
class PasswordChangedAuthentication extends AuthenticationEvent
    with _$PasswordChangedAuthenticationAutoequalMixin {
  final String newPasswordValue;

  const PasswordChangedAuthentication(this.newPasswordValue);
}

@autoequalMixin
class TurnPasswordVisibilityAuthentication extends AuthenticationEvent
    with _$TurnPasswordVisibilityAuthenticationAutoequalMixin {
  const TurnPasswordVisibilityAuthentication();
}

@autoequalMixin
class ResetEmailChanged extends AuthenticationEvent
    with _$ResetEmailChangedAutoequalMixin {
  final String newResetEmail;

  const ResetEmailChanged(this.newResetEmail);
}

@autoequalMixin
class ResetPassword extends AuthenticationEvent
    with _$ResetPasswordAutoequalMixin {
  const ResetPassword();
}

@autoequalMixin
class ChangeValidationStatus extends AuthenticationEvent
    with _$ChangeValidationStatusAutoequalMixin {
  const ChangeValidationStatus();
}
