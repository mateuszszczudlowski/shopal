import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/repositories/supabase_repository/supabase_repository.dart';
import 'package:template/src/services/authentication/bloc/authentication_bloc.dart';

class ServicesProvider extends StatelessWidget {
  final Widget child;
  const ServicesProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      // Here we have to provide all repositories
      // we want to have access to globally
      providers: [
        RepositoryProvider<ISupabaseRepository>(
          create: (context) => SupabaseRepository(),
        ),
      ],
      child: MultiBlocProvider(
        // Here we provide our global services
        providers: [
          BlocProvider(
            create: (context) => AuthenticationBloc(
              supabaseRepository: context.read<ISupabaseRepository>(),
            ),
          ),
        ],
        child: child,
      ),
    );
  }
}
