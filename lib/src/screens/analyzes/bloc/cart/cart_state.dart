part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;

  const factory CartState.loaded({
    required List<CartEntity> items,
  }) = _Loaded;
}
