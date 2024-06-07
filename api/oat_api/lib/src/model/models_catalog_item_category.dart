//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models_catalog_item_category.g.dart';

class ModelsCatalogItemCategory extends EnumClass {

  @BuiltValueEnumConst(wireName: r'all')
  static const ModelsCatalogItemCategory Default = _$Default;
  @BuiltValueEnumConst(wireName: r'news')
  static const ModelsCatalogItemCategory News = _$News;
  @BuiltValueEnumConst(wireName: r'covid')
  static const ModelsCatalogItemCategory Covid = _$Covid;
  @BuiltValueEnumConst(wireName: r'popular')
  static const ModelsCatalogItemCategory Popular = _$Popular;
  @BuiltValueEnumConst(wireName: r'complex')
  static const ModelsCatalogItemCategory Complex = _$Complex;

  static Serializer<ModelsCatalogItemCategory> get serializer => _$modelsCatalogItemCategorySerializer;

  const ModelsCatalogItemCategory._(String name): super(name);

  static BuiltSet<ModelsCatalogItemCategory> get values => _$values;
  static ModelsCatalogItemCategory valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ModelsCatalogItemCategoryMixin = Object with _$ModelsCatalogItemCategoryMixin;

