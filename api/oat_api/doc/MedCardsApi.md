# oat_api.api.MedCardsApi

## Load the API package
```dart
import 'package:oat_api/api.dart';
```

All URIs are relative to *http://407e-95-189-144-121.ngrok-free.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**medCardDelete**](MedCardsApi.md#medcarddelete) | **DELETE** /med-card | Удаление мед карты пользователя
[**medCardGet**](MedCardsApi.md#medcardget) | **GET** /med-card | Получение информации о мед картах пользователя
[**medCardPost**](MedCardsApi.md#medcardpost) | **POST** /med-card | Создание мед карты пользователя
[**medCardPut**](MedCardsApi.md#medcardput) | **PUT** /med-card | Обновление информации мед карты


# **medCardDelete**
> ControllersMedCardResponse medCardDelete(request)

Удаление мед карты пользователя

Удаляет мед карты пользователя по идентификатору

### Example
```dart
import 'package:oat_api/api.dart';

final api = OatApi().getMedCardsApi();
final ControllersMedCardRequest request = ; // ControllersMedCardRequest | Запрос для удаления мед карты пользователя

try {
    final response = api.medCardDelete(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MedCardsApi->medCardDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ControllersMedCardRequest**](ControllersMedCardRequest.md)| Запрос для удаления мед карты пользователя | 

### Return type

[**ControllersMedCardResponse**](ControllersMedCardResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **medCardGet**
> ControllersMedCardsInfoResponse medCardGet(email)

Получение информации о мед картах пользователя

Получает информацию о мед картах пользователя по email

### Example
```dart
import 'package:oat_api/api.dart';

final api = OatApi().getMedCardsApi();
final String email = email_example; // String | Email пользователя

try {
    final response = api.medCardGet(email);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MedCardsApi->medCardGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Email пользователя | 

### Return type

[**ControllersMedCardsInfoResponse**](ControllersMedCardsInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **medCardPost**
> ControllersCreateMedCardResponse medCardPost(request)

Создание мед карты пользователя

Создает мед карты пользователя с указанными данными

### Example
```dart
import 'package:oat_api/api.dart';

final api = OatApi().getMedCardsApi();
final ControllersCreateMedCardRequest request = ; // ControllersCreateMedCardRequest | Запрос для создания мед карты пользователя

try {
    final response = api.medCardPost(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MedCardsApi->medCardPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ControllersCreateMedCardRequest**](ControllersCreateMedCardRequest.md)| Запрос для создания мед карты пользователя | 

### Return type

[**ControllersCreateMedCardResponse**](ControllersCreateMedCardResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **medCardPut**
> ControllersUpdateMedCardResponse medCardPut(request)

Обновление информации мед карты

Обновляет информацию мед карты

### Example
```dart
import 'package:oat_api/api.dart';

final api = OatApi().getMedCardsApi();
final ControllersUpdateMedCardRequest request = ; // ControllersUpdateMedCardRequest | Запрос для создания профиля пользователя

try {
    final response = api.medCardPut(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MedCardsApi->medCardPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ControllersUpdateMedCardRequest**](ControllersUpdateMedCardRequest.md)| Запрос для создания профиля пользователя | 

### Return type

[**ControllersUpdateMedCardResponse**](ControllersUpdateMedCardResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

