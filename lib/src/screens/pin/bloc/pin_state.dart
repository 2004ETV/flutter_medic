part of 'pin_bloc.dart';

@freezed
class PinState with _$PinState {
  const factory PinState.initial() = _Initial;
  const factory PinState.success() = _Success;
}
