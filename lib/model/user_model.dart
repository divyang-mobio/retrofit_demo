import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  int id;
  String name, email, username, website;
  @JsonKey(name: 'phone')
  String mobile;
  @JsonKey(name: 'address')
  AddressModel addressModel;
  @JsonKey(name: 'company')
  CompanyModel companyModel;

  UserModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.mobile,
      required this.username,
      required this.website,
      required this.addressModel,
      required this.companyModel});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class AddressModel {
  String street, suite, city, zipcode;
  @JsonKey(name: 'geo')
  GeoModel geoModel;

  AddressModel(
      {required this.street,
      required this.city,
      required this.suite,
      required this.zipcode,
      required this.geoModel});

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}

@JsonSerializable()
class GeoModel {
  @JsonKey(name: 'lat')
  String latitude;
  @JsonKey(name: 'lng')
  String longitude;

  GeoModel({required this.latitude, required this.longitude});

  factory GeoModel.fromJson(Map<String, dynamic> json) =>
      _$GeoModelFromJson(json);

  Map<String, dynamic> toJson() => _$GeoModelToJson(this);
}

@JsonSerializable()
class CompanyModel {
  @JsonKey(name: 'name')
  String companyName;
  @JsonKey(name: 'catchPhrase')
  String businessMoto;
  @JsonKey(name: 'bs')
  String businessType;

  CompanyModel(
      {required this.companyName,
      required this.businessMoto,
      required this.businessType});

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyModelToJson(this);
}
