import 'package:bloc/bloc.dart';
import 'package:flutter_medic/src/auth/controllers/auth_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_verification_bloc.freezed.dart';
part 'email_verification_event.dart';
part 'email_verification_state.dart';

class EmailVerificationBloc
    extends Bloc<EmailVerificationEvent, EmailVerificationState> {
  EmailVerificationBloc({required AuthController authController})
      : _authController = authController,
        super(const EmailVerificationState.initial()) {
    on<EmailVerificationEvent>((events, emit) async {
      await events.map(
        checkCode: (event) => _checkCode(event, emit),
      );
    });
  }

  Future<void> _checkCode(
    _CheckCode event,
    Emitter<EmailVerificationState> emit,
  ) async {
    try {
      emit(const EmailVerificationState.loading());

      await _authController.checkCode(code: event.code);

      emit(const EmailVerificationState.success());
    } catch (e) {
      print(e);
      emit(EmailVerificationState.error(error: e));
    }
  }

  final AuthController _authController;
}
