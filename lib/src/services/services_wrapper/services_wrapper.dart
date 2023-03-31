import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/services/authentication/authentication_wrapper.dart';

class ServicesWrapper extends StatelessWidget {
  final Widget child;
  final AppRouter router;

  const ServicesWrapper({
    super.key,
    required this.router,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        authenticationWrapper(router: router),
      ],
      child: child,
    );
  }
}
