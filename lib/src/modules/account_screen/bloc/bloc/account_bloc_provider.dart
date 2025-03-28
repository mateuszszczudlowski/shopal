import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/modules/account_screen/bloc/bloc/account_bloc.dart';
import 'package:template/src/repositories/supabase_repository/supabase_repository.dart';
import 'package:template/src/services/authentication/bloc/authentication_bloc.dart';
import 'package:template/src/utils/loading_status.dart';

class AccountBlocProvider extends StatelessWidget {
  final Widget child;

  const AccountBlocProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AccountBloc(supabaseRepository: context.read<ISupabaseRepository>()),
      child: BlocListener<AccountBloc, AccountState>(
        listener: (context, state) {
          if (state.loadingStatus is SuccessStatus) {
            context.router.push(SettingsRoute(
                user: BlocProvider.of<AuthenticationBloc>(context)
                    .state
                    .userProfile));
          }
        },
        child: child,
      ),
    );
  }
}
