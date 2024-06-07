import 'package:flutter_medic/src/database/cart/cart_entity.dart';

abstract interface class LocalDatabaseRepository {
  const LocalDatabaseRepository();

  List<CartEntity> loadItems();

  Future<void> addItem({
    required CartEntity entity,
  });

  Future<void> deleteItem({
    required int index,
  });

  Future<void> deleteAll();

  Future<void> deleteByIndex({
    required int index,
  });

  Future<void> incrementPatient({
    required int index,
    required CartEntity entity,
  });

  Future<void> decrementPatient({
    required int index,
    required CartEntity entity,
  });
}
