//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_update_med_card_response.g.dart';

/// ControllersUpdateMedCardResponse
///
/// Properties:
/// * [errorMessage] 
/// * [success] 
@BuiltValue()
abstract class ControllersUpdateMedCardResponse implements Built<ControllersUpdateMedCardResponse, ControllersUpdateMedCardResponseBuilder> {
  @BuiltValueField(wireName: r'errorMessage')
  String? get errorMessage;

  @BuiltValueField(wireName: r'success')
  bool? get success;

  ControllersUpdateMedCardResponse._();

  factory ControllersUpdateMedCardResponse([void updates(ControllersUpdateMedCardResponseBuilder b)]) = _$ControllersUpdateMedCardResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersUpdateMedCardResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersUpdateMedCardResponse> get serializer => _$ControllersUpdateMedCardResponseSerializer();
}

class _$ControllersUpdateMedCardResponseSerializer implements PrimitiveSerializer<ControllersUpdateMedCardResponse> {
  @override
  final Iterable<Type> types = const [ControllersUpdateMedCardResponse, _$ControllersUpdateMedCardResponse];

  @override
  final String wireName = r'ControllersUpdateMedCardResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersUpdateMedCardResponse object, {
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
    ControllersUpdateMedCardResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersUpdateMedCardResponseBuilder result,
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
  ControllersUpdateMedCardResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersUpdateMedCardResponseBuilder();
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

