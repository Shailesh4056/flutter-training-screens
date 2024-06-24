import 'package:json_annotation/json_annotation.dart'; 

part 'home_request_model.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class HomeRequestModel {
  @JsonKey(name: 'categories')
  List<Categorie>? categories;
  @JsonKey(name: 'popluar_project_list')
  List<PopluarProjectList>? popluarProjectList;
  @JsonKey(name: 'service_provider')
  List<ServiceProvider>? serviceProvider;

  HomeRequestModel({this.categories, this.popluarProjectList, this.serviceProvider});

   factory HomeRequestModel.fromJson(Map<String, dynamic> json) => _$HomeRequestModelFromJson(json);

   Map<String, dynamic> toJson() => _$HomeRequestModelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Categorie {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'tag')
  String? tag;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'title')
  String? title;

  Categorie({this.id, this.name, this.description, this.tag, this.image, this.title});

   factory Categorie.fromJson(Map<String, dynamic> json) => _$CategorieFromJson(json);

   Map<String, dynamic> toJson() => _$CategorieToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class PopluarProjectList {
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'label')
  String? label;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'avg_price_description')
  String? avgPriceDescription;
  @JsonKey(name: 'category_id')
  int? categoryId;
  @JsonKey(name: 'sub_category_id')
  int? subCategoryId;
  @JsonKey(name: 'gardening_service_ids')
  String? gardeningServiceIds;
  @JsonKey(name: 'category_image')
  String? categoryImage;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'sub_category_image')
  String? subCategoryImage;
  @JsonKey(name: 'sub_category_description')
  String? subCategoryDescription;
  @JsonKey(name: 'sub_category_name')
  String? subCategoryName;

  PopluarProjectList({this.image, this.label, this.title, this.avgPriceDescription, this.categoryId, this.subCategoryId, this.gardeningServiceIds, this.categoryImage, this.name, this.description, this.subCategoryImage, this.subCategoryDescription, this.subCategoryName});

   factory PopluarProjectList.fromJson(Map<String, dynamic> json) => _$PopluarProjectListFromJson(json);

   Map<String, dynamic> toJson() => _$PopluarProjectListToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class ServiceProvider {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'about_me')
  String? aboutMe;
  @JsonKey(name: 'category_ids')
  String? categoryIds;
  @JsonKey(name: 'full_name')
  String? fullName;
  @JsonKey(name: 'profile_image')
  String? profileImage;
  @JsonKey(name: 'rating')
  int? rating;
  @JsonKey(name: 'total_review')
  int? totalReview;
  @JsonKey(name: 'review')
  String? review;
  @JsonKey(name: 'distance')
  String? distance;
  @JsonKey(name: 'full_address')
  String? fullAddress;
  @JsonKey(name: 'categories')
  List<Categorie>? categories;

  ServiceProvider({this.id, this.aboutMe, this.categoryIds, this.fullName, this.profileImage, this.rating, this.totalReview, this.review, this.distance, this.fullAddress, this.categories});

   factory ServiceProvider.fromJson(Map<String, dynamic> json) => _$ServiceProviderFromJson(json);

   Map<String, dynamic> toJson() => _$ServiceProviderToJson(this);
}


