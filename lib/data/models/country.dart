import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable()
class Country {
  @JsonKey(name: 'country_id')
  String? countryId;
  double? probability;

  Country({
    this.countryId,
    this.probability,
  });

  factory Country.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CountryFromJson(
        json,
      );

  Map<String, dynamic> toJson() => _$CountryToJson(
        this,
      );
}
