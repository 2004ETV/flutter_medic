import 'package:test/test.dart';
import 'package:oat_api/oat_api.dart';


/// tests for AuthApi
void main() {
  final instance = OatApi().getAuthApi();

  group(AuthApi, () {
    // Проверка кода
    //
    // Проверяет код, отправленный на указанный email
    //
    //Future<ControllersCheckCodeResponse> authCheckCodePost(ControllersCheckCodeRequest request) async
    test('test authCheckCodePost', () async {
      // TODO
    });

    // Повторная отправка кода подтверждения
    //
    // Повторно отправляет код подтверждения на email пользователя
    //
    //Future<ControllersSendCodeAgainResponse> authSendCodeAgainPost(ControllersSendCodeAgainRequest request) async
    test('test authSendCodeAgainPost', () async {
      // TODO
    });

    // Проверка email
    //
    // Отправляет код на email и создаёт запись в бд
    //
    //Future<ControllersSendCodeResponse> authSendCodePost(ControllersSendCodeRequest request) async
    test('test authSendCodePost', () async {
      // TODO
    });

  });
}
