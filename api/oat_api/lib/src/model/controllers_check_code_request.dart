//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_check_code_request.g.dart';

/// ControllersCheckCodeRequest
///
/// Properties:
/// * [code] 
/// * [email] 
@BuiltValue()
abstract class ControllersCheckCodeRequest implements Built<ControllersCheckCodeRequest, ControllersCheckCodeRequestBuilder> {
  @BuiltValueField(wireName: r'code')
  String? get code;

  @BuiltValueField(wireName: r'email')
  String? get email;

  ControllersCheckCodeRequest._();

  factory ControllersCheckCodeRequest([void updates(ControllersCheckCodeRequestBuilder b)]) = _$ControllersCheckCodeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersCheckCodeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersCheckCodeRequest> get serializer => _$ControllersCheckCodeRequestSerializer();
}

class _$ControllersCheckCodeRequestSerializer implements PrimitiveSerializer<ControllersCheckCodeRequest> {
  @override
  final Iterable<Type> types = const [ControllersCheckCodeRequest, _$ControllersCheckCodeRequest];

  @override
  final String wireName = r'ControllersCheckCodeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersCheckCodeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ControllersCheckCodeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersCheckCodeRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ControllersCheckCodeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersCheckCodeRequestBuilder();
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

