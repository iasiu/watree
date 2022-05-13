// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeData _$$_HomeDataFromJson(Map<String, dynamic> json) => _$_HomeData(
      temperature: (json['temperature'] as num).toDouble(),
      airHumidity: (json['airHumidity'] as num).toDouble(),
      soilHumidity: (json['soilHumidity'] as num).toDouble(),
      isWatering: json['isWatering'] as bool,
    );

Map<String, dynamic> _$$_HomeDataToJson(_$_HomeData instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'airHumidity': instance.airHumidity,
      'soilHumidity': instance.soilHumidity,
      'isWatering': instance.isWatering,
    };
