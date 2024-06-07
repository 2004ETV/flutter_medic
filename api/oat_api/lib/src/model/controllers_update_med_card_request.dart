//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_update_med_card_request.g.dart';

/// ControllersUpdateMedCardRequest
///
/// Properties:
/// * [birthDate] 
/// * [firstName] 
/// * [lastName] 
/// * [medCardId] 
/// * [middleName] 
/// * [profileImageUrl] 
/// * [sex] 
@BuiltValue()
abstract class ControllersUpdateMedCardRequest implements Built<ControllersUpdateMedCardRequest, ControllersUpdateMedCardRequestBuilder> {
  @BuiltValueField(wireName: r'birthDate')
  String? get birthDate;

  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'medCardId')
  int? get medCardId;

  @BuiltValueField(wireName: r'middleName')
  String? get middleName;

  @BuiltValueField(wireName: r'profileImageUrl')
  String? get profileImageUrl;

  @BuiltValueField(wireName: r'sex')
  String? get sex;

  ControllersUpdateMedCardRequest._();

  factory ControllersUpdateMedCardRequest([void updates(ControllersUpdateMedCardRequestBuilder b)]) = _$ControllersUpdateMedCardRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersUpdateMedCardRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersUpdateMedCardRequest> get serializer => _$ControllersUpdateMedCardRequestSerializer();
}

class _$ControllersUpdateMedCardRequestSerializer implements PrimitiveSerializer<ControllersUpdateMedCardRequest> {
  @override
  final Iterable<Type> types = const [ControllersUpdateMedCardRequest, _$ControllersUpdateMedCardRequest];

  @override
  final String wireName = r'ControllersUpdateMedCardRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersUpdateMedCardRequest object, {
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
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.medCardId != null) {
      yield r'medCardId';
      yield serializers.serialize(
        object.medCardId,
        specifiedType: const FullType(int),
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
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ControllersUpdateMedCardRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersUpdateMedCardRequestBuilder result,
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
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'medCardId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.medCardId = valueDes;
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
            specifiedType: const FullType(String),
          ) as String;
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
  ControllersUpdateMedCardRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersUpdateMedCardRequestBuilder();
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

