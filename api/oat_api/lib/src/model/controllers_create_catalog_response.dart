//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_create_catalog_response.g.dart';

/// ControllersCreateCatalogResponse
///
/// Properties:
/// * [message] 
/// * [success] 
@BuiltValue()
abstract class ControllersCreateCatalogResponse implements Built<ControllersCreateCatalogResponse, ControllersCreateCatalogResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'success')
  bool? get success;

  ControllersCreateCatalogResponse._();

  factory ControllersCreateCatalogResponse([void updates(ControllersCreateCatalogResponseBuilder b)]) = _$ControllersCreateCatalogResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersCreateCatalogResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersCreateCatalogResponse> get serializer => _$ControllersCreateCatalogResponseSerializer();
}

class _$ControllersCreateCatalogResponseSerializer implements PrimitiveSerializer<ControllersCreateCatalogResponse> {
  @override
  final Iterable<Type> types = const [ControllersCreateCatalogResponse, _$ControllersCreateCatalogResponse];

  @override
  final String wireName = r'ControllersCreateCatalogResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersCreateCatalogResponse object, {
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
    ControllersCreateCatalogResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersCreateCatalogResponseBuilder result,
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
  ControllersCreateCatalogResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersCreateCatalogResponseBuilder();
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

