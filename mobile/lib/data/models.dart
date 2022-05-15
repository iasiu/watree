import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class HomeData with _$HomeData {
  const factory HomeData({
    required double temperature,
    required double airHumidity,
    required double soilHumidity,
    required bool isWatering,
  }) = _HomeData;

  factory HomeData.fromJson(Map<String, dynamic> json) =>
      _$HomeDataFromJson(json);
}

@freezed
class HistoryData with _$HistoryData {
  const factory HistoryData({
    required List<DataPoint> temperaturePoints,
    required List<DataPoint> airHumidityPoints,
    required List<DataPoint> soilHumidityPoints,
  }) = _HistoryData;

  factory HistoryData.fromJson(Map<String, dynamic> json) =>
      _$HistoryDataFromJson(json);
}

@freezed
class DataPoint with _$DataPoint {
  const factory DataPoint({
    required double x,
    required double y,
  }) = _DataPoint;

  factory DataPoint.fromJson(Map<String, dynamic> json) =>
      _$DataPointFromJson(json);
}
