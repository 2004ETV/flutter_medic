import 'package:flutter_medic/src/repositories/storage/storage_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageRepositoryImpl implements StorageRepository {
  const StorageRepositoryImpl({
    required this.preferences,
  });

  final SharedPreferences preferences;

  @override
  bool? getBool({
    required String key,
  }) {
    return preferences.getBool(key);
  }

  @override
  Future<void> setBool({
    required String key,
    required bool value,
  }) async {
    await preferences.setBool(key, value);
  }
}
