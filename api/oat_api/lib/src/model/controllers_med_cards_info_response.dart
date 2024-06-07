//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:oat_api/src/model/models_med_card.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_med_cards_info_response.g.dart';

/// ControllersMedCardsInfoResponse
///
/// Properties:
/// * [errorMessage] 
/// * [profileInfo] 
@BuiltValue()
abstract class ControllersMedCardsInfoResponse implements Built<ControllersMedCardsInfoResponse, ControllersMedCardsInfoResponseBuilder> {
  @BuiltValueField(wireName: r'errorMessage')
  String? get errorMessage;

  @BuiltValueField(wireName: r'profileInfo')
  BuiltList<ModelsMedCard>? get profileInfo;

  ControllersMedCardsInfoResponse._();

  factory ControllersMedCardsInfoResponse([void updates(ControllersMedCardsInfoResponseBuilder b)]) = _$ControllersMedCardsInfoResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersMedCardsInfoResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersMedCardsInfoResponse> get serializer => _$ControllersMedCardsInfoResponseSerializer();
}

class _$ControllersMedCardsInfoResponseSerializer implements PrimitiveSerializer<ControllersMedCardsInfoResponse> {
  @override
  final Iterable<Type> types = const [ControllersMedCardsInfoResponse, _$ControllersMedCardsInfoResponse];

  @override
  final String wireName = r'ControllersMedCardsInfoResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersMedCardsInfoResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.errorMessage != null) {
      yield r'errorMessage';
      yield serializers.serialize(
        object.errorMessage,
        specifiedType: const FullType(String),
      );
    }
    if (object.profileInfo != null) {
      yield r'profileInfo';
      yield serializers.serialize(
        object.profileInfo,
        specifiedType: const FullType(BuiltList, [FullType(ModelsMedCard)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ControllersMedCardsInfoResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersMedCardsInfoResponseBuilder result,
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
        case r'profileInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModelsMedCard)]),
          ) as BuiltList<ModelsMedCard>;
          result.profileInfo.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ControllersMedCardsInfoResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersMedCardsInfoResponseBuilder();
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

