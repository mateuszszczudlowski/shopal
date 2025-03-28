import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/modules/register_screen/bloc/register_bloc.dart';
import 'package:template/src/repositories/supabase_repository/supabase_repository.dart';
import 'package:template/src/utils/loading_status.dart';

class RegisterBlocProvider extends StatelessWidget {
  final Widget child;

  const RegisterBlocProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RegisterBloc(supabaseRepository: context.read<ISupabaseRepository>()),
      child: BlocListener<RegisterBloc, RegisterState>(
        listener: (context, state) {
          if (state.loadingStatus is SuccessStatus) {
            context.router.push(const LoginRoute());
          }
        },
        child: child,
      ),
    );
  }
}
