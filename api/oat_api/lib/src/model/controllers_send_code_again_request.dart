//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_send_code_again_request.g.dart';

/// ControllersSendCodeAgainRequest
///
/// Properties:
/// * [email] 
@BuiltValue()
abstract class ControllersSendCodeAgainRequest implements Built<ControllersSendCodeAgainRequest, ControllersSendCodeAgainRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  ControllersSendCodeAgainRequest._();

  factory ControllersSendCodeAgainRequest([void updates(ControllersSendCodeAgainRequestBuilder b)]) = _$ControllersSendCodeAgainRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersSendCodeAgainRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersSendCodeAgainRequest> get serializer => _$ControllersSendCodeAgainRequestSerializer();
}

class _$ControllersSendCodeAgainRequestSerializer implements PrimitiveSerializer<ControllersSendCodeAgainRequest> {
  @override
  final Iterable<Type> types = const [ControllersSendCodeAgainRequest, _$ControllersSendCodeAgainRequest];

  @override
  final String wireName = r'ControllersSendCodeAgainRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersSendCodeAgainRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    ControllersSendCodeAgainRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersSendCodeAgainRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  ControllersSendCodeAgainRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersSendCodeAgainRequestBuilder();
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

