import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/services/authentication/bloc/authentication_bloc.dart';
import 'package:template/src/utils/authentication_status.dart';

BlocListener authenticationWrapper({required AppRouter router}) {
  return BlocListener<AuthenticationBloc, AuthenticationState>(
    listenWhen: (previous, current) => current.status != previous.status,
    listener: (context, state) {
      switch (state.status) {
        case AuthenticationStatus.authenticated:
          router.replace(const MainRoute());
          break;
        case AuthenticationStatus.unauthenticated:
          router.replace(const LoginRoute());
          break;
        default:
          break;
      }
    },
  );
}
