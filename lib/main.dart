import 'package:flutter/material.dart';
import 'package:flutter_medic/src/app.dart';
import 'package:flutter_medic/src/auth/controllers/auth_controller.dart';
import 'package:flutter_medic/src/database/cart/cart_entity.dart';
import 'package:flutter_medic/src/repositories/storage/storage_repository.dart';
import 'package:flutter_medic/src/repositories/storage/storage_repository_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:oat_api/oat_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(CartEntityAdapter());

  await Hive.openBox<CartEntity>('cart_box');

  GetIt.I.registerLazySingletonAsync<SharedPreferences>(
    () async {
      final preferences = await SharedPreferences.getInstance();

      return preferences;
    },
  );

  await GetIt.I.isReady<SharedPreferences>();

  GetIt.I
    ..registerLazySingleton(
      () => OatApi(
        basePathOverride: 'https://9155-193-143-67-113.ngrok-free.app/',
      ),
    )
    ..registerLazySingleton<StorageRepository>(
      () => StorageRepositoryImpl(
        preferences: GetIt.I.get<SharedPreferences>(),
      ),
    )
    ..registerLazySingletonAsync<AuthController>(
      () async {
        final authController = AuthController(
          sharedPreferences: GetIt.I.get<SharedPreferences>(),
          api: GetIt.I.get<OatApi>(),
        );

        await authController.restore();

        return authController;
      },
      dispose: (controller) => controller.dispose(),
    );

  await GetIt.I.isReady<AuthController>();

  runApp(const App());
}
