import 'package:autoequal/autoequal.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/repositories/supabase_repository/supabase_repository.dart';
import 'package:template/src/utils/loading_status.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.g.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final ISupabaseRepository _supabaseRepository;
  AccountBloc({
    required ISupabaseRepository supabaseRepository,
  })  : _supabaseRepository = supabaseRepository,
        super(const AccountState()) {
    on<EmailChanged>(_onEmailChanged);
    on<NameChanged>(_onNameChanged);
    on<SaveUserData>(_onSaveUserData);
    on<ValidateAccountNameField>(_onValidateAccountNameField);
    on<ValidateAccountEmailField>(_onValidateAccountEmailField);
  }

  void _onValidateAccountNameField(
    ValidateAccountNameField event,
    Emitter<AccountState> emit,
  ) {
    emit(state.copyWith(validAccountForm: event.validAccountName));
  }

  void _onValidateAccountEmailField(
    ValidateAccountEmailField event,
    Emitter<AccountState> emit,
  ) {
    emit(state.copyWith(validAccountForm: event.validAccountEmail));
  }

  void _onEmailChanged(
    EmailChanged event,
    Emitter<AccountState> emit,
  ) {
    emit(state.copyWith(email: event.newEmailValue));
  }

  void _onNameChanged(
    NameChanged event,
    Emitter<AccountState> emit,
  ) {
    emit(state.copyWith(name: event.newNameValue));
  }

  Future<void> _onSaveUserData(
      SaveUserData event, Emitter<AccountState> emit) async {
    try {
      await _supabaseRepository.updateUserData(
          name: state.name, email: state.email);

      emit(state.copyWith(loadingStatus: const SuccessStatus()));
    } catch (exception) {
      emit(state.copyWith(loadingStatus: FailedStatus(error: exception)));
      addError(exception);
    }
  }
}
