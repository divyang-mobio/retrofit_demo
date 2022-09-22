// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      username: json['username'] as String,
      website: json['website'] as String,
      addressModel:
          AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      companyModel:
          CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'username': instance.username,
      'phone': instance.phone,
      'website': instance.website,
      'address': instance.addressModel,
      'company': instance.companyModel,
    };

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) => AddressModel(
      street: json['street'] as String,
      city: json['city'] as String,
      suite: json['suite'] as String,
      zipcode: json['zipcode'] as String,
      geoModel: GeoModel.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geoModel,
    };

GeoModel _$GeoModelFromJson(Map<String, dynamic> json) => GeoModel(
      lat: json['lat'] as String,
      lng: json['lng'] as String,
    );

Map<String, dynamic> _$GeoModelToJson(GeoModel instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) => CompanyModel(
      companyName: json['name'] as String,
      businessMoto: json['catchPhrase'] as String,
      businessType: json['bs'] as String,
    );

Map<String, dynamic> _$CompanyModelToJson(CompanyModel instance) =>
    <String, dynamic>{
      'name': instance.companyName,
      'catchPhrase': instance.businessMoto,
      'bs': instance.businessType,
    };
