//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_delete_catalog_item_request.g.dart';

/// ControllersDeleteCatalogItemRequest
///
/// Properties:
/// * [id] 
@BuiltValue()
abstract class ControllersDeleteCatalogItemRequest implements Built<ControllersDeleteCatalogItemRequest, ControllersDeleteCatalogItemRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  ControllersDeleteCatalogItemRequest._();

  factory ControllersDeleteCatalogItemRequest([void updates(ControllersDeleteCatalogItemRequestBuilder b)]) = _$ControllersDeleteCatalogItemRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersDeleteCatalogItemRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersDeleteCatalogItemRequest> get serializer => _$ControllersDeleteCatalogItemRequestSerializer();
}

class _$ControllersDeleteCatalogItemRequestSerializer implements PrimitiveSerializer<ControllersDeleteCatalogItemRequest> {
  @override
  final Iterable<Type> types = const [ControllersDeleteCatalogItemRequest, _$ControllersDeleteCatalogItemRequest];

  @override
  final String wireName = r'ControllersDeleteCatalogItemRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersDeleteCatalogItemRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ControllersDeleteCatalogItemRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersDeleteCatalogItemRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ControllersDeleteCatalogItemRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersDeleteCatalogItemRequestBuilder();
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

