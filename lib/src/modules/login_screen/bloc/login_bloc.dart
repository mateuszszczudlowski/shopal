import 'package:autoequal/autoequal.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/utils/loading_status.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.g.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(super.initialState);
}
