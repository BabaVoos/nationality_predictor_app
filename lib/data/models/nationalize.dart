import 'package:json_annotation/json_annotation.dart';

import 'country.dart';

part 'nationalize.g.dart';

@JsonSerializable()
class Nationalize {
  int? count;
  String? name;
  List<Country>? country;

  Nationalize({
    this.count,
    this.name,
    this.country,
  });

  factory Nationalize.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NationalizeFromJson(
        json,
      );

  Map<String, dynamic> toJson() => _$NationalizeToJson(
        this,
      );
}
