// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nationalize.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nationalize _$NationalizeFromJson(Map<String, dynamic> json) => Nationalize(
      count: json['count'] as int?,
      name: json['name'] as String?,
      country: (json['country'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NationalizeToJson(Nationalize instance) =>
    <String, dynamic>{
      'count': instance.count,
      'name': instance.name,
      'country': instance.country,
    };
