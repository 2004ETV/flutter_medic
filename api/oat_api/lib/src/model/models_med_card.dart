//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:oat_api/src/model/models_sex_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models_med_card.g.dart';

/// ModelsMedCard
///
/// Properties:
/// * [birthDate] 
/// * [firstName] 
/// * [id] 
/// * [lastName] 
/// * [middleName] 
/// * [profileImageUrl] 
/// * [sex] 
/// * [userId] 
@BuiltValue()
abstract class ModelsMedCard implements Built<ModelsMedCard, ModelsMedCardBuilder> {
  @BuiltValueField(wireName: r'birthDate')
  String? get birthDate;

  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'middleName')
  String? get middleName;

  @BuiltValueField(wireName: r'profileImageUrl')
  String? get profileImageUrl;

  @BuiltValueField(wireName: r'sex')
  ModelsSexType? get sex;
  // enum sexEnum {  M,  W,  };

  @BuiltValueField(wireName: r'userId')
  int? get userId;

  ModelsMedCard._();

  factory ModelsMedCard([void updates(ModelsMedCardBuilder b)]) = _$ModelsMedCard;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelsMedCardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelsMedCard> get serializer => _$ModelsMedCardSerializer();
}

class _$ModelsMedCardSerializer implements PrimitiveSerializer<ModelsMedCard> {
  @override
  final Iterable<Type> types = const [ModelsMedCard, _$ModelsMedCard];

  @override
  final String wireName = r'ModelsMedCard';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelsMedCard object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.birthDate != null) {
      yield r'birthDate';
      yield serializers.serialize(
        object.birthDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
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
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.middleName != null) {
      yield r'middleName';
      yield serializers.serialize(
        object.middleName,
        specifiedType: const FullType(String),
      );
    }
    if (object.profileImageUrl != null) {
      yield r'profileImageUrl';
      yield serializers.serialize(
        object.profileImageUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.sex != null) {
      yield r'sex';
      yield serializers.serialize(
        object.sex,
        specifiedType: const FullType(ModelsSexType),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelsMedCard object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModelsMedCardBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'birthDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.birthDate = valueDes;
          break;
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'middleName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.middleName = valueDes;
          break;
        case r'profileImageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.profileImageUrl = valueDes;
          break;
        case r'sex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModelsSexType),
          ) as ModelsSexType;
          result.sex = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelsMedCard deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelsMedCardBuilder();
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

