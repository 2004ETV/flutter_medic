//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'controllers_check_code_response.g.dart';

/// ControllersCheckCodeResponse
///
/// Properties:
/// * [message] 
/// * [userId] 
@BuiltValue()
abstract class ControllersCheckCodeResponse implements Built<ControllersCheckCodeResponse, ControllersCheckCodeResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'userId')
  int? get userId;

  ControllersCheckCodeResponse._();

  factory ControllersCheckCodeResponse([void updates(ControllersCheckCodeResponseBuilder b)]) = _$ControllersCheckCodeResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ControllersCheckCodeResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ControllersCheckCodeResponse> get serializer => _$ControllersCheckCodeResponseSerializer();
}

class _$ControllersCheckCodeResponseSerializer implements PrimitiveSerializer<ControllersCheckCodeResponse> {
  @override
  final Iterable<Type> types = const [ControllersCheckCodeResponse, _$ControllersCheckCodeResponse];

  @override
  final String wireName = r'ControllersCheckCodeResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ControllersCheckCodeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ControllersCheckCodeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ControllersCheckCodeResponseBuilder result,
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
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ControllersCheckCodeResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ControllersCheckCodeResponseBuilder();
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

