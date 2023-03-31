part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object?> get props => [];
}

@autoequalMixin
class EmailChanged extends RegisterEvent with _$EmailChangedAutoequalMixin {
  final String newEmailValue;

  const EmailChanged(this.newEmailValue);
}

@autoequalMixin
class NameChanged extends RegisterEvent with _$NameChangedAutoequalMixin {
  final String newNameValue;

  const NameChanged(this.newNameValue);
}

@autoequalMixin
class PasswordChanged extends RegisterEvent
    with _$PasswordChangedAutoequalMixin {
  final String newPasswordValue;

  const PasswordChanged(this.newPasswordValue);
}

@autoequalMixin
class ShowNameError extends RegisterEvent with _$ShowNameErrorAutoequalMixin {
  const ShowNameError();
}

@autoequalMixin
class RegisterUser extends RegisterEvent with _$RegisterUserAutoequalMixin {
  const RegisterUser();
}

@autoequalMixin
class TurnPasswordVisibility extends RegisterEvent
    with _$TurnPasswordVisibilityAutoequalMixin {
  const TurnPasswordVisibility();
}
