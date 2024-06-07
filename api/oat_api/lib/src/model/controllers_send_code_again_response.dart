//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_send_code_again_response.g.dart';

/// ControllersSendCodeAgainResponse
///
/// Properties:
/// * [success] 
@BuiltValue()
abstract class ControllersSendCodeAgainResponse implements Built<ControllersSendCodeAgainResponse, ControllersSendCodeAgainResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  ControllersSendCodeAgainResponse._();

  factory ControllersSendCodeAgainResponse([void updates(ControllersSendCodeAgainResponseBuilder b)]) = _$ControllersSendCodeAgainResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersSendCodeAgainResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersSendCodeAgainResponse> get serializer => _$ControllersSendCodeAgainResponseSerializer();
}

class _$ControllersSendCodeAgainResponseSerializer implements PrimitiveSerializer<ControllersSendCodeAgainResponse> {
  @override
  final Iterable<Type> types = const [ControllersSendCodeAgainResponse, _$ControllersSendCodeAgainResponse];

  @override
  final String wireName = r'ControllersSendCodeAgainResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersSendCodeAgainResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    ControllersSendCodeAgainResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersSendCodeAgainResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  ControllersSendCodeAgainResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersSendCodeAgainResponseBuilder();
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

