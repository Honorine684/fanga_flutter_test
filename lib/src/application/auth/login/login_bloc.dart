import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/_commons/i_auth_repository.dart';
import '../../../domain/auth/failure/auth_failure.dart';
import '../../../domain/auth/value_objects/email_address.dart';
import '../../../domain/auth/value_objects/password.dart';
import '../../../infrastructure/_commons/network/env_config.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  IAuthRepository repository;
  LoginBloc({required this.repository}) : super(LoginState.initial()) {
    on<Click>(_click);
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChanged);
    on<Submit>(_submit);
  }

  void _click(Click event, Emitter<LoginState> emit) {
    emit(state.copyWith(clickType: event.buttonType));
    emit(state.copyWith(clickType: ''));
  }

  void _emailChanged(EmailChanged event, Emitter<LoginState> emit) {
    if (event.value.isEmpty) return;
    final String email = event.value;
    final EmailAddress emailAddress = EmailAddress(email);
    emit(
      state.copyWith(
        emailAddress: email,
        emailIsError: !emailAddress.isValid(),
        isSubmitable: emailAddress.isValid() && state.password.isNotEmpty,
      ),
    );
  }

  void _passwordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    if (event.value.isEmpty) return;
    final String password = event.value;
    emit(
      state.copyWith(
        password: password,
        isSubmitable: state.emailAddress.isNotEmpty && password.isNotEmpty,
      ),
    );
  }

  Future<void> _submit(Submit event, Emitter<LoginState> emit) async {
    if (state.emailAddress.isEmpty || state.password.isEmpty) {
      emit(
        state.copyWith(
          showErrorMessages: true,
          authFailureOrSuccessOption: some(
            const Left(
              AuthFailure.fieldError('MessagesStrings.allFieldRequired'),
            ),
          ),
        ),
      );
      emit(
        state.copyWith(
          showErrorMessages: false,
          authFailureOrSuccessOption: none(),
        ),
      );
      return;
    }

    _envManager(
      email: state.emailAddress,
      password: state.password,
      emit: emit,
    );

    Either<AuthFailure, Unit> failedOrSuccessResponse;

    emit(state.copyWith(isSubmitting: true));
    failedOrSuccessResponse = await repository.signInWithEmailAndPassword(
      emailAddress: EmailAddress(state.emailAddress),
      password: Password(state.password),
    );
    failedOrSuccessResponse.fold(
      (l) {
        emit(
          state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: some(Left(l)),
          ),
        );
        emit(
          state.copyWith(
            isSubmitting: false,
            showErrorMessages: false,
            authFailureOrSuccessOption: none(),
          ),
        );
      },
      (r) => emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: some(const Right(unit)),
        ),
      ),
    );
  }

  Future<void> _envManager({
    required String email,
    required String password,
    required Emitter<LoginState> emit,
  }) async {
    if (email == EnvManager.emailEnv) {
      await EnvManager().setEnvironment(env: password, restart: true);
      emit(state.copyWith(restartApp: true));
      emit(state.copyWith(restartApp: null));
      return;
    }
  }
}
