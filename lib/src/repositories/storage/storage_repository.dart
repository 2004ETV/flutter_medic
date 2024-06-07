abstract interface class StorageRepository {
  const StorageRepository._();

  bool? getBool({required String key});

  Future<void> setBool({
    required String key,
    required bool value,
  });
}
