//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_delete_catalog_item_response.g.dart';

/// ControllersDeleteCatalogItemResponse
///
/// Properties:
/// * [message] 
/// * [success] 
@BuiltValue()
abstract class ControllersDeleteCatalogItemResponse implements Built<ControllersDeleteCatalogItemResponse, ControllersDeleteCatalogItemResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'success')
  bool? get success;

  ControllersDeleteCatalogItemResponse._();

  factory ControllersDeleteCatalogItemResponse([void updates(ControllersDeleteCatalogItemResponseBuilder b)]) = _$ControllersDeleteCatalogItemResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersDeleteCatalogItemResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersDeleteCatalogItemResponse> get serializer => _$ControllersDeleteCatalogItemResponseSerializer();
}

class _$ControllersDeleteCatalogItemResponseSerializer implements PrimitiveSerializer<ControllersDeleteCatalogItemResponse> {
  @override
  final Iterable<Type> types = const [ControllersDeleteCatalogItemResponse, _$ControllersDeleteCatalogItemResponse];

  @override
  final String wireName = r'ControllersDeleteCatalogItemResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersDeleteCatalogItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ControllersDeleteCatalogItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersDeleteCatalogItemResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ControllersDeleteCatalogItemResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersDeleteCatalogItemResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

