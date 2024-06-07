import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'pin_bloc.freezed.dart';
part 'pin_event.dart';
part 'pin_state.dart';

class PinBloc extends Bloc<PinEvent, PinState> {
  PinBloc() : super(const PinState.initial()) {
    on<PinEvent>((events, emit) async {
      await events.map(
        setPin: (event) => _setPin(event, emit),
      );
    });
  }

  Future<void> _setPin(
    _SetPin event,
    Emitter<PinState> emit,
  ) async {
    await _sharedPreferences.setString('pin', event.pin);
  }

  final SharedPreferences _sharedPreferences = GetIt.I.get<SharedPreferences>();
}
