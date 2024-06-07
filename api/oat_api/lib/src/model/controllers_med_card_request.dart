//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_med_card_request.g.dart';

/// ControllersMedCardRequest
///
/// Properties:
/// * [id] 
@BuiltValue()
abstract class ControllersMedCardRequest implements Built<ControllersMedCardRequest, ControllersMedCardRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  ControllersMedCardRequest._();

  factory ControllersMedCardRequest([void updates(ControllersMedCardRequestBuilder b)]) = _$ControllersMedCardRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersMedCardRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersMedCardRequest> get serializer => _$ControllersMedCardRequestSerializer();
}

class _$ControllersMedCardRequestSerializer implements PrimitiveSerializer<ControllersMedCardRequest> {
  @override
  final Iterable<Type> types = const [ControllersMedCardRequest, _$ControllersMedCardRequest];

  @override
  final String wireName = r'ControllersMedCardRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersMedCardRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ControllersMedCardRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersMedCardRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ControllersMedCardRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersMedCardRequestBuilder();
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

