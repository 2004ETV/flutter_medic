# oat_api.api.AuthApi

## Load the API package
```dart
import 'package:oat_api/api.dart';
```

All URIs are relative to *http://407e-95-189-144-121.ngrok-free.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authCheckCodePost**](AuthApi.md#authcheckcodepost) | **POST** /auth/check-code | Проверка кода
[**authSendCodeAgainPost**](AuthApi.md#authsendcodeagainpost) | **POST** /auth/send-code-again | Повторная отправка кода подтверждения
[**authSendCodePost**](AuthApi.md#authsendcodepost) | **POST** /auth/send-code | Проверка email


# **authCheckCodePost**
> ControllersCheckCodeResponse authCheckCodePost(request)

Проверка кода

Проверяет код, отправленный на указанный email

### Example
```dart
import 'package:oat_api/api.dart';

final api = OatApi().getAuthApi();
final ControllersCheckCodeRequest request = ; // ControllersCheckCodeRequest | Запрос на проверку кода

try {
    final response = api.authCheckCodePost(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authCheckCodePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ControllersCheckCodeRequest**](ControllersCheckCodeRequest.md)| Запрос на проверку кода | 

### Return type

[**ControllersCheckCodeResponse**](ControllersCheckCodeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authSendCodeAgainPost**
> ControllersSendCodeAgainResponse authSendCodeAgainPost(request)

Повторная отправка кода подтверждения

Повторно отправляет код подтверждения на email пользователя

### Example
```dart
import 'package:oat_api/api.dart';

final api = OatApi().getAuthApi();
final ControllersSendCodeAgainRequest request = ; // ControllersSendCodeAgainRequest | Запрос для повторной отправки кода подтверждения

try {
    final response = api.authSendCodeAgainPost(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authSendCodeAgainPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ControllersSendCodeAgainRequest**](ControllersSendCodeAgainRequest.md)| Запрос для повторной отправки кода подтверждения | 

### Return type

[**ControllersSendCodeAgainResponse**](ControllersSendCodeAgainResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authSendCodePost**
> ControllersSendCodeResponse authSendCodePost(request)

Проверка email

Отправляет код на email и создаёт запись в бд

### Example
```dart
import 'package:oat_api/api.dart';

final api = OatApi().getAuthApi();
final ControllersSendCodeRequest request = ; // ControllersSendCodeRequest | Запрос для отправки кода и создания записи в бд

try {
    final response = api.authSendCodePost(request);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authSendCodePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ControllersSendCodeRequest**](ControllersSendCodeRequest.md)| Запрос для отправки кода и создания записи в бд | 

### Return type

[**ControllersSendCodeResponse**](ControllersSendCodeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

