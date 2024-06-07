import 'package:test/test.dart';
import 'package:oat_api/oat_api.dart';


/// tests for CatalogApi
void main() {
  final instance = OatApi().getCatalogApi();

  group(CatalogApi, () {
    // Получить элемент каталога по ID.
    //
    // Получает элемент каталога по его ID.
    //
    //Future<ControllersGetCatalogItemByIdResponse> catalogByIdGet(int itemId) async
    test('test catalogByIdGet', () async {
      // TODO
    });

    // Удаление новости из каталога
    //
    // Удаляет новость из каталога по идентификатору
    //
    //Future<ControllersDeleteCatalogItemResponse> catalogDelete(ControllersDeleteCatalogItemRequest request) async
    test('test catalogDelete', () async {
      // TODO
    });

    // Получение новостей из каталога
    //
    // Получает новости из каталога по категории
    //
    //Future<ControllersGetCatalogResponse> catalogGet(String category) async
    test('test catalogGet', () async {
      // TODO
    });

    // Создание новости
    //
    // Создает новую новость в каталоге
    //
    //Future<ControllersCreateCatalogResponse> catalogPost(ControllersCreateCatalogRequest request) async
    test('test catalogPost', () async {
      // TODO
    });

  });
}
