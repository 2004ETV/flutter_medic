part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.load() = _Load;

  const factory CartEvent.add({
    required CartEntity entity,
  }) = _Add;

  const factory CartEvent.delete({
    required int index,
  }) = _Delete;

  const factory CartEvent.deleteAll() = _DeleteAll;

  const factory CartEvent.deleteByIndex({
    required int index,
  }) = _DeleteByIndex;

  const factory CartEvent.incrementPatient({
    required int index,
    required CartEntity entity,
  }) = _IncrementPatient;

  const factory CartEvent.decrementPatient({
    required int index,
    required CartEntity entity,
  }) = _DecrementPatient;
}
