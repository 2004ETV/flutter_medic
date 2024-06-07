//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_send_code_response.g.dart';

/// ControllersSendCodeResponse
///
/// Properties:
/// * [errorMessage] 
/// * [success] 
@BuiltValue()
abstract class ControllersSendCodeResponse implements Built<ControllersSendCodeResponse, ControllersSendCodeResponseBuilder> {
  @BuiltValueField(wireName: r'errorMessage')
  String? get errorMessage;

  @BuiltValueField(wireName: r'success')
  bool? get success;

  ControllersSendCodeResponse._();

  factory ControllersSendCodeResponse([void updates(ControllersSendCodeResponseBuilder b)]) = _$ControllersSendCodeResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersSendCodeResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersSendCodeResponse> get serializer => _$ControllersSendCodeResponseSerializer();
}

class _$ControllersSendCodeResponseSerializer implements PrimitiveSerializer<ControllersSendCodeResponse> {
  @override
  final Iterable<Type> types = const [ControllersSendCodeResponse, _$ControllersSendCodeResponse];

  @override
  final String wireName = r'ControllersSendCodeResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersSendCodeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.errorMessage != null) {
      yield r'errorMessage';
      yield serializers.serialize(
        object.errorMessage,
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
    ControllersSendCodeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersSendCodeResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'errorMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorMessage = valueDes;
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
  ControllersSendCodeResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersSendCodeResponseBuilder();
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

