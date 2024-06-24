import 'package:json_annotation/json_annotation.dart'; 

part 'category_response.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class CategoryResponse {
  @JsonKey(name: 'code')
  int? code;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'data')
  List<Data>? data;

  CategoryResponse({this.code, this.message, this.data});

   factory CategoryResponse.fromJson(Map<String, dynamic> json) => _$CategoryResponseFromJson(json);

   Map<String, dynamic> toJson() => _$CategoryResponseToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Data {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'is_static')
  int? isStatic;
  @JsonKey(name: 'add_ons')
  List<AddOn>? addOns;
  @JsonKey(name: 'category_details')
  CategoryDetails? categoryDetails;

  Data({this.id, this.description, this.image, this.name, this.isStatic, this.addOns, this.categoryDetails});

   factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

   Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class AddOn {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'is_price')
  int? isPrice;
  @JsonKey(name: 'price')
  int? price;
  @JsonKey(name: 'name')
  String? name;

  AddOn({this.id, this.isPrice, this.price, this.name});

   factory AddOn.fromJson(Map<String, dynamic> json) => _$AddOnFromJson(json);

   Map<String, dynamic> toJson() => _$AddOnToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class CategoryDetails {
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

  CategoryDetails({this.id, this.name, this.description, this.tag, this.image, this.title});

   factory CategoryDetails.fromJson(Map<String, dynamic> json) => _$CategoryDetailsFromJson(json);

   Map<String, dynamic> toJson() => _$CategoryDetailsToJson(this);
}

