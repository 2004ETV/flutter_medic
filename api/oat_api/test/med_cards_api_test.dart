import 'package:test/test.dart';
import 'package:oat_api/oat_api.dart';


/// tests for MedCardsApi
void main() {
  final instance = OatApi().getMedCardsApi();

  group(MedCardsApi, () {
    // Удаление мед карты пользователя
    //
    // Удаляет мед карты пользователя по идентификатору
    //
    //Future<ControllersMedCardResponse> medCardDelete(ControllersMedCardRequest request) async
    test('test medCardDelete', () async {
      // TODO
    });

    // Получение информации о мед картах пользователя
    //
    // Получает информацию о мед картах пользователя по email
    //
    //Future<ControllersMedCardsInfoResponse> medCardGet(String email) async
    test('test medCardGet', () async {
      // TODO
    });

    // Создание мед карты пользователя
    //
    // Создает мед карты пользователя с указанными данными
    //
    //Future<ControllersCreateMedCardResponse> medCardPost(ControllersCreateMedCardRequest request) async
    test('test medCardPost', () async {
      // TODO
    });

    // Обновление информации мед карты
    //
    // Обновляет информацию мед карты
    //
    //Future<ControllersUpdateMedCardResponse> medCardPut(ControllersUpdateMedCardRequest request) async
    test('test medCardPut', () async {
      // TODO
    });

  });
}
