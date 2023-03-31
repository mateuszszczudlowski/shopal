part of 'account_bloc.dart';

abstract class AccountEvent extends Equatable {
  const AccountEvent();

  @override
  List<Object?> get props => [];
}

@autoequalMixin
class EmailChanged extends AccountEvent with _$EmailChangedAutoequalMixin {
  final String newEmailValue;
  const EmailChanged(this.newEmailValue);
}

@autoequalMixin
class NameChanged extends AccountEvent with _$NameChangedAutoequalMixin {
  final String newNameValue;
  const NameChanged(this.newNameValue);
}

@autoequalMixin
class SaveUserData extends AccountEvent with _$NameChangedAutoequalMixin {
  const SaveUserData();
}

@autoequalMixin
class ValidateAccountNameField extends AccountEvent
    with _$ValidateAccountNameFieldAutoequalMixin {
  final bool validAccountName;
  const ValidateAccountNameField(this.validAccountName);
}

@autoequalMixin
class ValidateAccountEmailField extends AccountEvent
    with _$ValidateAccountEmailFieldAutoequalMixin {
  final bool validAccountEmail;
  const ValidateAccountEmailField(this.validAccountEmail);
}
