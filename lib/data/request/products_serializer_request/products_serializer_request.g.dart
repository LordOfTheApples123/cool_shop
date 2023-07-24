// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_serializer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_ProductsSerializerRequestToJson(
    _$_ProductsSerializerRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('city_fias', instance.cityFias);
  writeNotNull('brand', instance.brand);
  val['category_ids'] = instance.categoryIds;
  val['product_ids'] = instance.productIds;
  writeNotNull('sort_by', instance.sortBy);
  return val;
}
