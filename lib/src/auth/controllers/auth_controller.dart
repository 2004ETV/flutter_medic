import 'package:flutter/material.dart';
import 'package:oat_api/oat_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends ChangeNotifier {
  AuthController({
    required SharedPreferences sharedPreferences,
    required this.api,
  }) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;
  final OatApi api;

  int? userId;
  String? email;

  Future<void> restore() async {
    final userId = _sharedPreferences.getInt('userId');

    if (userId == null) {
      notifyListeners();
      return;
    }

    print(userId);

    this.userId = userId;
  }

  Future<void> sendCode({required String email}) async {
    await api.getAuthApi().authSendCodePost(
          request: ControllersSendCodeRequest(
            (b) => b.email = email,
          ),
        );

    this.email = email;

    notifyListeners();
  }

  Future<void> checkCode({
    required String code,
  }) async {
    final result = await api.getAuthApi().authCheckCodePost(
      request: ControllersCheckCodeRequest(
            (b) => b
          ..email = email
          ..code = code,
      ),
    );

    if (result.data == null) {
      return Future.error('Ошибка');
    }

    userId = result.data!.userId;

    await _sharedPreferences.setInt('userId', result.data!.userId!);
  }

  Future<void> logout() async{
    await _sharedPreferences.remove('userId');
    userId = null;
  }
}
