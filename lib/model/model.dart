import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class DataModel {
  int userId, id;
  @JsonKey(name: "title")
  String name;
  @JsonKey(name: "body")
  String subtitle;

  DataModel(
      {required this.userId,
      required this.id,
      required this.name,
      required this.subtitle});

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
