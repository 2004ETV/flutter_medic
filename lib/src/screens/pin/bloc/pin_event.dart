part of 'pin_bloc.dart';

@freezed
class PinEvent with _$PinEvent {
  const factory PinEvent.setPin({
    required String pin,
  }) = _SetPin;
}
