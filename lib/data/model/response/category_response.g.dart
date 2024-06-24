// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) =>
    CategoryResponse(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryResponseToJson(CategoryResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt(),
      description: json['description'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      isStatic: (json['is_static'] as num?)?.toInt(),
      addOns: (json['add_ons'] as List<dynamic>?)
          ?.map((e) => AddOn.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryDetails: json['category_details'] == null
          ? null
          : CategoryDetails.fromJson(
              json['category_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'image': instance.image,
      'name': instance.name,
      'is_static': instance.isStatic,
      'add_ons': instance.addOns,
      'category_details': instance.categoryDetails,
    };

AddOn _$AddOnFromJson(Map<String, dynamic> json) => AddOn(
      id: (json['id'] as num?)?.toInt(),
      isPrice: (json['is_price'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$AddOnToJson(AddOn instance) => <String, dynamic>{
      'id': instance.id,
      'is_price': instance.isPrice,
      'price': instance.price,
      'name': instance.name,
    };

CategoryDetails _$CategoryDetailsFromJson(Map<String, dynamic> json) =>
    CategoryDetails(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      tag: json['tag'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$CategoryDetailsToJson(CategoryDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'tag': instance.tag,
      'image': instance.image,
      'title': instance.title,
    };
