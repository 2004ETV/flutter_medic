import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_medic/src/auth/controllers/auth_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({required AuthController authController})
      : _authController = authController,
        super(const SignInState.initial()) {
    on<SignInEvent>((events, emit) async {
      await events.map(
        sendCode: (event) => _sendCode(event, emit),
      );
    });
  }

  Future<void> _sendCode(
    _SendCode event,
    Emitter<SignInState> emit,
  ) async {
    try {
      emit(const SignInState.loading());

      await _authController.sendCode(email: event.email);

      emit(const SignInState.success());
    } catch (e) {
      print(e);
      emit(SignInState.error(error: e));
    }
  }

  final AuthController _authController;
}
