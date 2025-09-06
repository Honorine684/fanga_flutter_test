import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/_commons/i_auth_repository.dart';
import '../../../domain/auth/_commons/user_create/user_create.dart';
import '../../../domain/auth/failure/auth_failure.dart';
import '../../../domain/auth/value_objects/email_address.dart';
import '../../../domain/auth/value_objects/password.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  IAuthRepository repository;
  RegisterBloc({required this.repository}) : super(RegisterState.initial()) {
    on<RegisterEvent>((event, emit) {});
    on<Click>(_click);
    on<FieldChanged>(_fieldChanged);
    on<Submit>(_submit);
  }

  void _click(Click event, Emitter<RegisterState> emit) {
    emit(state.copyWith(clickType: event.buttonType));
    emit(state.copyWith(clickType: ''));
  }

  void _fieldChanged(FieldChanged event, Emitter<RegisterState> emit) {
    final UserCreate userCreate = state.userCreate ?? UserCreate();
    String? messageError;
    final String? value = event.value;
    if (value == null) return;
    switch (event.fieldKey) {
      case 'firstname':
        if (value.isEmpty) {
          return;
        } else {
          messageError = null;
          userCreate.firstName = value;
        }

        break;
      case 'lastname':
        if (value.isEmpty) {
          return;
        } else {
          messageError = null;
          userCreate.lastName = value;
        }
        break;
      case 'username':
        if (value.isEmpty) {
          return;
        } else {
          messageError = null;
          userCreate.username = value;
        }
        break;
      case 'email':
        if (value.isEmpty) {
          return;
        } else if (!EmailAddress(value).isValid()) {
          messageError = 'MessagesStrings.emailInvalid';
          userCreate.email = null;
        } else {
          messageError = null;
          userCreate.email = value;
        }
        break;
      case 'phone':
        if (value.isEmpty) {
          return;
        } else {
          messageError = null;
          userCreate.phone = value;
        }
        break;
      case 'password':
        if (value.isEmpty) {
          return;
        } else {
          if (value.length < 8) {
            messageError = 'MessagesStrings.password8Charactere';
            userCreate.password = value;
          } else {
            messageError = null;
            userCreate.password = value;
          }
        }
        break;
      case 'comfirmPassword':
        if (value.isEmpty) {
          return;
        } else {
          if (value.length < 8) {
            messageError = 'MessagesStrings.password8Charactere';
          } else if (userCreate.password != value) {
            messageError = 'MessagesStrings.passwordNotIdentique';
          } else {
            messageError = null;
            userCreate.password = value;
          }
        }
        break;
      default:
    }

    emit(
      state.copyWith(
        fieldKey: event.fieldKey,
        userCreate: userCreate,
        errorMessage: messageError,
        showErrorMessages: messageError != null,
        isSubmitable: userCreate.isvalid,
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _submit(Submit event, Emitter<RegisterState> emit) async {
    if (state.userCreate == null || !state.userCreate!.isvalid) {
      emit(
        state.copyWith(
          fieldKey: '',
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

    if (!event.conditionCheck) {
      emit(
        state.copyWith(
          fieldKey: '',
          showErrorMessages: true,
          authFailureOrSuccessOption: some(
            const Left(
              AuthFailure.fieldError('MessagesStrings.youMustAcceptCondition'),
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

    Either<AuthFailure, Unit> failedOrSuccessResponse;
    final UserCreate? userCreate = state.userCreate;

    emit(state.copyWith(isSubmitting: true));
    failedOrSuccessResponse = await repository.signUp(
      emailAddress: EmailAddress(userCreate!.email!),
      password: Password(userCreate.password!),
      firstName: userCreate.firstName,
      lastName: userCreate.lastName,
      phone: userCreate.phone,
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
}
