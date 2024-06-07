//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_med_card_response.g.dart';

/// ControllersMedCardResponse
///
/// Properties:
/// * [message] 
/// * [success] 
@BuiltValue()
abstract class ControllersMedCardResponse implements Built<ControllersMedCardResponse, ControllersMedCardResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'success')
  bool? get success;

  ControllersMedCardResponse._();

  factory ControllersMedCardResponse([void updates(ControllersMedCardResponseBuilder b)]) = _$ControllersMedCardResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersMedCardResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersMedCardResponse> get serializer => _$ControllersMedCardResponseSerializer();
}

class _$ControllersMedCardResponseSerializer implements PrimitiveSerializer<ControllersMedCardResponse> {
  @override
  final Iterable<Type> types = const [ControllersMedCardResponse, _$ControllersMedCardResponse];

  @override
  final String wireName = r'ControllersMedCardResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersMedCardResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
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
    ControllersMedCardResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersMedCardResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
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
  ControllersMedCardResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersMedCardResponseBuilder();
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

