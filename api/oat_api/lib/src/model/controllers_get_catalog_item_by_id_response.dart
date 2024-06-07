//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_get_catalog_item_by_id_response.g.dart';

/// ControllersGetCatalogItemByIdResponse
///
/// Properties:
/// * [bio] 
/// * [category] 
/// * [createdAt] 
/// * [description] 
/// * [errorMessage] 
/// * [id] 
/// * [imageUrl] 
/// * [name] 
/// * [preparation] 
/// * [price] 
/// * [timeRes] 
@BuiltValue()
abstract class ControllersGetCatalogItemByIdResponse implements Built<ControllersGetCatalogItemByIdResponse, ControllersGetCatalogItemByIdResponseBuilder> {
  @BuiltValueField(wireName: r'bio')
  String? get bio;

  @BuiltValueField(wireName: r'category')
  String? get category;

  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'errorMessage')
  String? get errorMessage;

  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'preparation')
  String? get preparation;

  @BuiltValueField(wireName: r'price')
  String? get price;

  @BuiltValueField(wireName: r'timeRes')
  String? get timeRes;

  ControllersGetCatalogItemByIdResponse._();

  factory ControllersGetCatalogItemByIdResponse([void updates(ControllersGetCatalogItemByIdResponseBuilder b)]) = _$ControllersGetCatalogItemByIdResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersGetCatalogItemByIdResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersGetCatalogItemByIdResponse> get serializer => _$ControllersGetCatalogItemByIdResponseSerializer();
}

class _$ControllersGetCatalogItemByIdResponseSerializer implements PrimitiveSerializer<ControllersGetCatalogItemByIdResponse> {
  @override
  final Iterable<Type> types = const [ControllersGetCatalogItemByIdResponse, _$ControllersGetCatalogItemByIdResponse];

  @override
  final String wireName = r'ControllersGetCatalogItemByIdResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersGetCatalogItemByIdResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.bio != null) {
      yield r'bio';
      yield serializers.serialize(
        object.bio,
        specifiedType: const FullType(String),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.errorMessage != null) {
      yield r'errorMessage';
      yield serializers.serialize(
        object.errorMessage,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.imageUrl != null) {
      yield r'imageUrl';
      yield serializers.serialize(
        object.imageUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.preparation != null) {
      yield r'preparation';
      yield serializers.serialize(
        object.preparation,
        specifiedType: const FullType(String),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(String),
      );
    }
    if (object.timeRes != null) {
      yield r'timeRes';
      yield serializers.serialize(
        object.timeRes,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ControllersGetCatalogItemByIdResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersGetCatalogItemByIdResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bio = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.category = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'errorMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorMessage = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'imageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imageUrl = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'preparation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.preparation = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.price = valueDes;
          break;
        case r'timeRes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timeRes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ControllersGetCatalogItemByIdResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersGetCatalogItemByIdResponseBuilder();
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

