import 'package:hive_flutter/hive_flutter.dart';

part 'cart_entity.g.dart';

@HiveType(typeId: 0)
class CartEntity extends HiveObject {
  CartEntity({
    required this.id,
    required this.title,
    required this.price,
    this.patientCount = 1,
  });

  @HiveField(0)
  final int id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String price;

  @HiveField(3, defaultValue: 0)
  final int patientCount;
}
