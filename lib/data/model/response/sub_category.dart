import 'package:json_annotation/json_annotation.dart'; 

part 'sub_category.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class SubCategory {
  @JsonKey(name: 'id')
  double? id;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'is_static')
  double? isStatic;
  @JsonKey(name: 'add_ons')
  List<AddOn>? addOns;
  @JsonKey(name: 'category_details')
  CategoryDetails? categoryDetails;

  SubCategory({this.id, this.description, this.image, this.isStatic, this.addOns, this.categoryDetails});

   factory SubCategory.fromJson(Map<String, dynamic> json) => _$SubCategoryFromJson(json);

   Map<String, dynamic> toJson() => _$SubCategoryToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class AddOn {
  @JsonKey(name: 'id')
  double? id;
  @JsonKey(name: 'is_price')
  double? isPrice;
  @JsonKey(name: 'price')
  double? price;

  AddOn({this.id, this.isPrice, this.price});

   factory AddOn.fromJson(Map<String, dynamic> json) => _$AddOnFromJson(json);

   Map<String, dynamic> toJson() => _$AddOnToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class CategoryDetails {
  @JsonKey(name: 'id')
  double? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'tag')
  String? tag;
  @JsonKey(name: 'image')
  String? image;

  CategoryDetails({this.id, this.name, this.description, this.tag, this.image});

   factory CategoryDetails.fromJson(Map<String, dynamic> json) => _$CategoryDetailsFromJson(json);

   Map<String, dynamic> toJson() => _$CategoryDetailsToJson(this);
}

