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

_$_HistoryData _$$_HistoryDataFromJson(Map<String, dynamic> json) =>
    _$_HistoryData(
      temperaturePoints: (json['temperaturePoints'] as List<dynamic>)
          .map((e) => DataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      airHumidityPoints: (json['airHumidityPoints'] as List<dynamic>)
          .map((e) => DataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      soilHumidityPoints: (json['soilHumidityPoints'] as List<dynamic>)
          .map((e) => DataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HistoryDataToJson(_$_HistoryData instance) =>
    <String, dynamic>{
      'temperaturePoints': instance.temperaturePoints,
      'airHumidityPoints': instance.airHumidityPoints,
      'soilHumidityPoints': instance.soilHumidityPoints,
    };

_$_DataPoint _$$_DataPointFromJson(Map<String, dynamic> json) => _$_DataPoint(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$$_DataPointToJson(_$_DataPoint instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
