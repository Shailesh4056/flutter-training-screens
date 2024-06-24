// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeRequestModel _$HomeRequestModelFromJson(Map<String, dynamic> json) =>
    HomeRequestModel(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Categorie.fromJson(e as Map<String, dynamic>))
          .toList(),
      popluarProjectList: (json['popluar_project_list'] as List<dynamic>?)
          ?.map((e) => PopluarProjectList.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceProvider: (json['service_provider'] as List<dynamic>?)
          ?.map((e) => ServiceProvider.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeRequestModelToJson(HomeRequestModel instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'popluar_project_list': instance.popluarProjectList,
      'service_provider': instance.serviceProvider,
    };

Categorie _$CategorieFromJson(Map<String, dynamic> json) => Categorie(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      tag: json['tag'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$CategorieToJson(Categorie instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'tag': instance.tag,
      'image': instance.image,
      'title': instance.title,
    };

PopluarProjectList _$PopluarProjectListFromJson(Map<String, dynamic> json) =>
    PopluarProjectList(
      image: json['image'] as String?,
      label: json['label'] as String?,
      title: json['title'] as String?,
      avgPriceDescription: json['avg_price_description'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      subCategoryId: (json['sub_category_id'] as num?)?.toInt(),
      gardeningServiceIds: json['gardening_service_ids'] as String?,
      categoryImage: json['category_image'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      subCategoryImage: json['sub_category_image'] as String?,
      subCategoryDescription: json['sub_category_description'] as String?,
      subCategoryName: json['sub_category_name'] as String?,
    );

Map<String, dynamic> _$PopluarProjectListToJson(PopluarProjectList instance) =>
    <String, dynamic>{
      'image': instance.image,
      'label': instance.label,
      'title': instance.title,
      'avg_price_description': instance.avgPriceDescription,
      'category_id': instance.categoryId,
      'sub_category_id': instance.subCategoryId,
      'gardening_service_ids': instance.gardeningServiceIds,
      'category_image': instance.categoryImage,
      'name': instance.name,
      'description': instance.description,
      'sub_category_image': instance.subCategoryImage,
      'sub_category_description': instance.subCategoryDescription,
      'sub_category_name': instance.subCategoryName,
    };

ServiceProvider _$ServiceProviderFromJson(Map<String, dynamic> json) =>
    ServiceProvider(
      id: (json['id'] as num?)?.toInt(),
      aboutMe: json['about_me'] as String?,
      categoryIds: json['category_ids'] as String?,
      fullName: json['full_name'] as String?,
      profileImage: json['profile_image'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      totalReview: (json['total_review'] as num?)?.toInt(),
      review: json['review'] as String?,
      distance: json['distance'] as String?,
      fullAddress: json['full_address'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Categorie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServiceProviderToJson(ServiceProvider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'about_me': instance.aboutMe,
      'category_ids': instance.categoryIds,
      'full_name': instance.fullName,
      'profile_image': instance.profileImage,
      'rating': instance.rating,
      'total_review': instance.totalReview,
      'review': instance.review,
      'distance': instance.distance,
      'full_address': instance.fullAddress,
      'categories': instance.categories,
    };
