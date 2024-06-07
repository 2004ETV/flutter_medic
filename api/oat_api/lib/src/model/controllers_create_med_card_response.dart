//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_create_med_card_response.g.dart';

/// ControllersCreateMedCardResponse
///
/// Properties:
/// * [message] 
/// * [success] 
@BuiltValue()
abstract class ControllersCreateMedCardResponse implements Built<ControllersCreateMedCardResponse, ControllersCreateMedCardResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'success')
  bool? get success;

  ControllersCreateMedCardResponse._();

  factory ControllersCreateMedCardResponse([void updates(ControllersCreateMedCardResponseBuilder b)]) = _$ControllersCreateMedCardResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersCreateMedCardResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersCreateMedCardResponse> get serializer => _$ControllersCreateMedCardResponseSerializer();
}

class _$ControllersCreateMedCardResponseSerializer implements PrimitiveSerializer<ControllersCreateMedCardResponse> {
  @override
  final Iterable<Type> types = const [ControllersCreateMedCardResponse, _$ControllersCreateMedCardResponse];

  @override
  final String wireName = r'ControllersCreateMedCardResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersCreateMedCardResponse object, {
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
    ControllersCreateMedCardResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersCreateMedCardResponseBuilder result,
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
  ControllersCreateMedCardResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersCreateMedCardResponseBuilder();
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

