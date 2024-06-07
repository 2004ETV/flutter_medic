//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_send_code_request.g.dart';

/// ControllersSendCodeRequest
///
/// Properties:
/// * [email] 
@BuiltValue()
abstract class ControllersSendCodeRequest implements Built<ControllersSendCodeRequest, ControllersSendCodeRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  ControllersSendCodeRequest._();

  factory ControllersSendCodeRequest([void updates(ControllersSendCodeRequestBuilder b)]) = _$ControllersSendCodeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersSendCodeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersSendCodeRequest> get serializer => _$ControllersSendCodeRequestSerializer();
}

class _$ControllersSendCodeRequestSerializer implements PrimitiveSerializer<ControllersSendCodeRequest> {
  @override
  final Iterable<Type> types = const [ControllersSendCodeRequest, _$ControllersSendCodeRequest];

  @override
  final String wireName = r'ControllersSendCodeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersSendCodeRequest object, {
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
    ControllersSendCodeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersSendCodeRequestBuilder result,
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
  ControllersSendCodeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersSendCodeRequestBuilder();
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

