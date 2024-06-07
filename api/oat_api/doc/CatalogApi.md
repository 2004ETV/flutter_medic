# oat_api.api.CatalogApi

## Load the API package
```dart
import 'package:oat_api/api.dart';
```

All URIs are relative to *http://407e-95-189-144-121.ngrok-free.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**catalogByIdGet**](CatalogApi.md#catalogbyidget) | **GET** /catalog/by-id | Получить элемент каталога по ID.
[**catalogDelete**](CatalogApi.md#catalogdelete) | **DELETE** /catalog | Удаление новости из каталога
[**catalogGet**](CatalogApi.md#catalogget) | **GET** /catalog/ | Получение новостей из каталога
[**catalogPost**](CatalogApi.md#catalogpost) | **POST** /catalog/ | Создание новости


# **catalogByIdGet**
> ControllersGetCatalogItemByIdResponse catalogByIdGet(itemId)

Получить элемент каталога по ID.

Получает элемент каталога по его ID.

### Example
```dart
import 'package:oat_api/api.dart';

final api = OatApi().getCatalogApi();
final int itemId = 56; // int | ID элемента каталога

try {
    final response = api.catalogByIdGet(itemId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CatalogApi->catalogByIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **int**| ID элемента каталога | 

### Return type

[**ControllersGetCatalogItemByIdResponse**](ControllersGetCatalogItemByIdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catalogDelete**
> ControllersDeleteCatalogItemResponse catalogDelete(request)

Удаление новости из каталога

Удаляет новость из каталога по идентификатору

### Example
```dart
import 'package:oat_api/api.dart';

final api = OatApi().getCatalogApi();
final ControllersDeleteCatalogItemRequest request = ; // ControllersDeleteCatalogItemRequest | Запрос для удаления новости из каталога

try {
    final response = api.catalogDelete(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CatalogApi->catalogDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ControllersDeleteCatalogItemRequest**](ControllersDeleteCatalogItemRequest.md)| Запрос для удаления новости из каталога | 

### Return type

[**ControllersDeleteCatalogItemResponse**](ControllersDeleteCatalogItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catalogGet**
> ControllersGetCatalogResponse catalogGet(category)

Получение новостей из каталога

Получает новости из каталога по категории

### Example
```dart
import 'package:oat_api/api.dart';

final api = OatApi().getCatalogApi();
final String category = category_example; // String | Категория для получения новостей из каталога

try {
    final response = api.catalogGet(category);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CatalogApi->catalogGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | **String**| Категория для получения новостей из каталога | 

### Return type

[**ControllersGetCatalogResponse**](ControllersGetCatalogResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catalogPost**
> ControllersCreateCatalogResponse catalogPost(request)

Создание новости

Создает новую новость в каталоге

### Example
```dart
import 'package:oat_api/api.dart';

final api = OatApi().getCatalogApi();
final ControllersCreateCatalogRequest request = ; // ControllersCreateCatalogRequest | Запрос для создания новости

try {
    final response = api.catalogPost(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CatalogApi->catalogPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ControllersCreateCatalogRequest**](ControllersCreateCatalogRequest.md)| Запрос для создания новости | 

### Return type

[**ControllersCreateCatalogResponse**](ControllersCreateCatalogResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

