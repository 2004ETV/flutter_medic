//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:oat_api/src/model/models_catalog_item_category.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models_catalog_item.g.dart';

/// ModelsCatalogItem
///
/// Properties:
/// * [bio] 
/// * [category] 
/// * [createdAt] 
/// * [description] 
/// * [id] 
/// * [name] 
/// * [preparation] 
/// * [price] 
/// * [timeResult] 
@BuiltValue()
abstract class ModelsCatalogItem implements Built<ModelsCatalogItem, ModelsCatalogItemBuilder> {
  @BuiltValueField(wireName: r'bio')
  String? get bio;

  @BuiltValueField(wireName: r'category')
  ModelsCatalogItemCategory? get category;
  // enum categoryEnum {  all,  news,  covid,  popular,  complex,  };

  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'preparation')
  String? get preparation;

  @BuiltValueField(wireName: r'price')
  String? get price;

  @BuiltValueField(wireName: r'timeResult')
  String? get timeResult;

  ModelsCatalogItem._();

  factory ModelsCatalogItem([void updates(ModelsCatalogItemBuilder b)]) = _$ModelsCatalogItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelsCatalogItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelsCatalogItem> get serializer => _$ModelsCatalogItemSerializer();
}

class _$ModelsCatalogItemSerializer implements PrimitiveSerializer<ModelsCatalogItem> {
  @override
  final Iterable<Type> types = const [ModelsCatalogItem, _$ModelsCatalogItem];

  @override
  final String wireName = r'ModelsCatalogItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelsCatalogItem object, {
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
        specifiedType: const FullType(ModelsCatalogItemCategory),
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
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
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
    if (object.timeResult != null) {
      yield r'timeResult';
      yield serializers.serialize(
        object.timeResult,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelsCatalogItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModelsCatalogItemBuilder result,
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
            specifiedType: const FullType(ModelsCatalogItemCategory),
          ) as ModelsCatalogItemCategory;
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
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
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
        case r'timeResult':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timeResult = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelsCatalogItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelsCatalogItemBuilder();
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

