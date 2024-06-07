//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:oat_api/src/date_serializer.dart';
import 'package:oat_api/src/model/date.dart';

import 'package:oat_api/src/model/controllers_check_code_request.dart';
import 'package:oat_api/src/model/controllers_check_code_response.dart';
import 'package:oat_api/src/model/controllers_create_catalog_request.dart';
import 'package:oat_api/src/model/controllers_create_catalog_response.dart';
import 'package:oat_api/src/model/controllers_create_med_card_request.dart';
import 'package:oat_api/src/model/controllers_create_med_card_response.dart';
import 'package:oat_api/src/model/controllers_delete_catalog_item_request.dart';
import 'package:oat_api/src/model/controllers_delete_catalog_item_response.dart';
import 'package:oat_api/src/model/controllers_get_catalog_item_by_id_response.dart';
import 'package:oat_api/src/model/controllers_get_catalog_response.dart';
import 'package:oat_api/src/model/controllers_med_card_request.dart';
import 'package:oat_api/src/model/controllers_med_card_response.dart';
import 'package:oat_api/src/model/controllers_med_cards_info_response.dart';
import 'package:oat_api/src/model/controllers_send_code_again_request.dart';
import 'package:oat_api/src/model/controllers_send_code_again_response.dart';
import 'package:oat_api/src/model/controllers_send_code_request.dart';
import 'package:oat_api/src/model/controllers_send_code_response.dart';
import 'package:oat_api/src/model/controllers_update_med_card_request.dart';
import 'package:oat_api/src/model/controllers_update_med_card_response.dart';
import 'package:oat_api/src/model/models_catalog_item.dart';
import 'package:oat_api/src/model/models_catalog_item_category.dart';
import 'package:oat_api/src/model/models_med_card.dart';
import 'package:oat_api/src/model/models_sex_type.dart';

part 'serializers.g.dart';

@SerializersFor([
  ControllersCheckCodeRequest,
  ControllersCheckCodeResponse,
  ControllersCreateCatalogRequest,
  ControllersCreateCatalogResponse,
  ControllersCreateMedCardRequest,
  ControllersCreateMedCardResponse,
  ControllersDeleteCatalogItemRequest,
  ControllersDeleteCatalogItemResponse,
  ControllersGetCatalogItemByIdResponse,
  ControllersGetCatalogResponse,
  ControllersMedCardRequest,
  ControllersMedCardResponse,
  ControllersMedCardsInfoResponse,
  ControllersSendCodeAgainRequest,
  ControllersSendCodeAgainResponse,
  ControllersSendCodeRequest,
  ControllersSendCodeResponse,
  ControllersUpdateMedCardRequest,
  ControllersUpdateMedCardResponse,
  ModelsCatalogItem,
  ModelsCatalogItemCategory,
  ModelsMedCard,
  ModelsSexType,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
