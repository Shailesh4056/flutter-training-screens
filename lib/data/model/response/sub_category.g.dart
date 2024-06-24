// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) => SubCategory(
      id: (json['id'] as num?)?.toDouble(),
      description: json['description'] as String?,
      image: json['image'] as String?,
      isStatic: (json['is_static'] as num?)?.toDouble(),
      addOns: (json['add_ons'] as List<dynamic>?)
          ?.map((e) => AddOn.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryDetails: json['category_details'] == null
          ? null
          : CategoryDetails.fromJson(
              json['category_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubCategoryToJson(SubCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'image': instance.image,
      'is_static': instance.isStatic,
      'add_ons': instance.addOns,
      'category_details': instance.categoryDetails,
    };

AddOn _$AddOnFromJson(Map<String, dynamic> json) => AddOn(
      id: (json['id'] as num?)?.toDouble(),
      isPrice: (json['is_price'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AddOnToJson(AddOn instance) => <String, dynamic>{
      'id': instance.id,
      'is_price': instance.isPrice,
      'price': instance.price,
    };

CategoryDetails _$CategoryDetailsFromJson(Map<String, dynamic> json) =>
    CategoryDetails(
      id: (json['id'] as num?)?.toDouble(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      tag: json['tag'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$CategoryDetailsToJson(CategoryDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'tag': instance.tag,
      'image': instance.image,
    };
