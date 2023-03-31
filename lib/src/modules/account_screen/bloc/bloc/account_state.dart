part of 'account_bloc.dart';

@autoequalMixin
class AccountState extends Equatable with _$AccountStateAutoequalMixin {
  final String email;
  final String name;
  final String password;
  final LoadingStatus loadingStatus;
  final bool showPassword;
  final bool validAccountForm;

  const AccountState({
    this.showPassword = false,
    this.validAccountForm = false,
    this.email = '',
    this.name = '',
    this.password = '',
    this.loadingStatus = const IdleStatus(),
  });

  AccountState copyWith({
    bool? showPassword,
    bool? validAccountForm,
    String? email,
    String? name,
    String? password,
    LoadingStatus? loadingStatus,
  }) =>
      AccountState(
        showPassword: showPassword ?? this.showPassword,
        validAccountForm: validAccountForm ?? this.validAccountForm,
        email: email ?? this.email,
        name: name ?? this.name,
        password: password ?? this.password,
        loadingStatus: loadingStatus ?? this.loadingStatus,
      );
}

bool validateName(AccountState state) {
  bool validateNameStatus;
  validateNameStatus = (state.name.isEmpty) ? false : true;
  return validateNameStatus;
}
