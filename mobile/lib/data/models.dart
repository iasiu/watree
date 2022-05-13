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
