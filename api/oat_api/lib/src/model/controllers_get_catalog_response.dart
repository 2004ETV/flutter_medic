//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:oat_api/src/model/models_catalog_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_get_catalog_response.g.dart';

/// ControllersGetCatalogResponse
///
/// Properties:
/// * [catalogItems] 
/// * [errorMessage] 
@BuiltValue()
abstract class ControllersGetCatalogResponse implements Built<ControllersGetCatalogResponse, ControllersGetCatalogResponseBuilder> {
  @BuiltValueField(wireName: r'catalogItems')
  BuiltList<ModelsCatalogItem>? get catalogItems;

  @BuiltValueField(wireName: r'errorMessage')
  String? get errorMessage;

  ControllersGetCatalogResponse._();

  factory ControllersGetCatalogResponse([void updates(ControllersGetCatalogResponseBuilder b)]) = _$ControllersGetCatalogResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersGetCatalogResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersGetCatalogResponse> get serializer => _$ControllersGetCatalogResponseSerializer();
}

class _$ControllersGetCatalogResponseSerializer implements PrimitiveSerializer<ControllersGetCatalogResponse> {
  @override
  final Iterable<Type> types = const [ControllersGetCatalogResponse, _$ControllersGetCatalogResponse];

  @override
  final String wireName = r'ControllersGetCatalogResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersGetCatalogResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.catalogItems != null) {
      yield r'catalogItems';
      yield serializers.serialize(
        object.catalogItems,
        specifiedType: const FullType(BuiltList, [FullType(ModelsCatalogItem)]),
      );
    }
    if (object.errorMessage != null) {
      yield r'errorMessage';
      yield serializers.serialize(
        object.errorMessage,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ControllersGetCatalogResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersGetCatalogResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'catalogItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModelsCatalogItem)]),
          ) as BuiltList<ModelsCatalogItem>;
          result.catalogItems.replace(valueDes);
          break;
        case r'errorMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorMessage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ControllersGetCatalogResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersGetCatalogResponseBuilder();
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

