//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:oat_api/src/model/models_sex_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_create_med_card_request.g.dart';

/// ControllersCreateMedCardRequest
///
/// Properties:
/// * [birthDate] 
/// * [email] 
/// * [firstName] 
/// * [lastName] 
/// * [middleName] 
/// * [sex] 
@BuiltValue()
abstract class ControllersCreateMedCardRequest implements Built<ControllersCreateMedCardRequest, ControllersCreateMedCardRequestBuilder> {
  @BuiltValueField(wireName: r'birthDate')
  String? get birthDate;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'middleName')
  String? get middleName;

  @BuiltValueField(wireName: r'sex')
  ModelsSexType? get sex;
  // enum sexEnum {  M,  W,  };

  ControllersCreateMedCardRequest._();

  factory ControllersCreateMedCardRequest([void updates(ControllersCreateMedCardRequestBuilder b)]) = _$ControllersCreateMedCardRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersCreateMedCardRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersCreateMedCardRequest> get serializer => _$ControllersCreateMedCardRequestSerializer();
}

class _$ControllersCreateMedCardRequestSerializer implements PrimitiveSerializer<ControllersCreateMedCardRequest> {
  @override
  final Iterable<Type> types = const [ControllersCreateMedCardRequest, _$ControllersCreateMedCardRequest];

  @override
  final String wireName = r'ControllersCreateMedCardRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersCreateMedCardRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.birthDate != null) {
      yield r'birthDate';
      yield serializers.serialize(
        object.birthDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
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
    if (object.sex != null) {
      yield r'sex';
      yield serializers.serialize(
        object.sex,
        specifiedType: const FullType(ModelsSexType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ControllersCreateMedCardRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersCreateMedCardRequestBuilder result,
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
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
        case r'sex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModelsSexType),
          ) as ModelsSexType;
          result.sex = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ControllersCreateMedCardRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersCreateMedCardRequestBuilder();
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

