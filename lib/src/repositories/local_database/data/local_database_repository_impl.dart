import 'package:flutter_medic/src/database/cart/cart_entity.dart';
import 'package:flutter_medic/src/repositories/local_database/data/local_database_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalDatabaseRepositoryImpl implements LocalDatabaseRepository {
  final cartBox = Hive.box<CartEntity>('cart_box');

  @override
  List<CartEntity> loadItems() {
    return cartBox.values.toList();
  }

  @override
  Future<void> addItem({
    required CartEntity entity,
  }) async {
    await cartBox.put(entity.id, entity);
  }

  @override
  Future<void> deleteItem({
    required int index,
  }) async {
    await cartBox.deleteAt(index);
  }

  @override
  Future<void> deleteAll() async {
    await cartBox.clear();
  }

  @override
  Future<void> deleteByIndex({
    required int index,
  }) async {
    await cartBox.delete(index);
  }

  @override
  Future<void> incrementPatient({
    required int index,
    required CartEntity entity,
  }) async {
    await cartBox.putAt(index, entity);
  }

  @override
  Future<void> decrementPatient({
    required int index,
    required CartEntity entity,
  }) async {
    await cartBox.putAt(index, entity);
  }
}
