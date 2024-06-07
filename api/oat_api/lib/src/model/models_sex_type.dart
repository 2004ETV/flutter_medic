//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models_sex_type.g.dart';

class ModelsSexType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'M')
  static const ModelsSexType MaleSex = _$MaleSex;
  @BuiltValueEnumConst(wireName: r'W')
  static const ModelsSexType WomanSex = _$WomanSex;

  static Serializer<ModelsSexType> get serializer => _$modelsSexTypeSerializer;

  const ModelsSexType._(String name): super(name);

  static BuiltSet<ModelsSexType> get values => _$values;
  static ModelsSexType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ModelsSexTypeMixin = Object with _$ModelsSexTypeMixin;

