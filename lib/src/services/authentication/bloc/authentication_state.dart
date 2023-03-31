part of 'authentication_bloc.dart';

@autoequalMixin
class AuthenticationState extends Equatable
    with _$AuthenticationStateAutoequalMixin {
  final AuthenticationStatus status;
  final UserProfile? userProfile;
  final LoadingStatus loadingStatus;
  final LoadingStatus validationStatus;
  final Map<String, dynamic>? userData;
  final String? email;
  final String? resetEmail;
  final String? password;
  final bool showPassword;

  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.userProfile,
    this.resetEmail,
    this.showPassword = false,
    this.userData,
    this.email,
    this.password,
    this.loadingStatus = const IdleStatus(),
    this.validationStatus = const IdleStatus(),
  });

  AuthenticationState copyWith({
    AuthenticationStatus? status,
    String? resetEmail,
    bool? showPassword,
    Map<String, dynamic>? userData,
    UserProfile? userProfile,
    String? email,
    String? password,
    LoadingStatus? loadingStatus,
    LoadingStatus? validationStatus,
  }) =>
      AuthenticationState._(
        status: status ?? this.status,
        resetEmail: resetEmail ?? this.resetEmail,
        showPassword: showPassword ?? this.showPassword,
        email: email ?? this.email,
        password: password ?? this.password,
        userData: userData ?? this.userData,
        userProfile: userProfile ?? this.userProfile,
        loadingStatus: loadingStatus ?? this.loadingStatus,
        validationStatus: validationStatus ?? this.validationStatus,
      );

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  const AuthenticationState.authenticated()
      : this._(status: AuthenticationStatus.authenticated);
}
