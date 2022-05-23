import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watree/data/fetch_firebase.dart';
import 'package:watree/data/models.dart';

part 'history_cubit.freezed.dart';

final random = Random();

// double _getRandomIn({
//   required double min,
//   required double max,
// }) {
//   final range = max - min;
//   return random.nextDouble() * range + min;
// }

List<DataPoint> _getRandomDataIn({
  required List<double> values,
  int count = 168,
}) {
  const rangeX = 7.5 - 0.5;

  return List.generate(
    count,
    (index) => DataPoint(
      x: index / (count - 1) * rangeX + 0.5,
      y: values[index],
    ),
  );
}

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit() : super(const HistoryState.initial());

  Future<void> load() async {
    try {
      final response = await FetchFirebase().getHistoryData();
      List<double> airHumidityPoints = [];
      List<double> soilHumidityPoints = [];
      List<double> temperaturePoints = [];

      for (int i = 0; i < 168; i++) {
        airHumidityPoints.add(response['soilHumidityPoints'][i]*100);
        soilHumidityPoints.add(response['soilHumidityPoints'][i]*100);
        temperaturePoints.add(response['temperaturePoints'][i].toDouble());
      }

      HistoryData data =  HistoryData(
        temperaturePoints: _getRandomDataIn(values: temperaturePoints),
        airHumidityPoints: _getRandomDataIn(values: airHumidityPoints),
        soilHumidityPoints: _getRandomDataIn(values: soilHumidityPoints),
      );

      final temperatureMaxY =
          data.temperaturePoints.map((e) => e.y).toList().max.ceil() + 0.1;
      final temperatureMinY =
          data.temperaturePoints.map((e) => e.y).toList().min.floor() - 0.1;

      emit(
        HistoryState.success(
          temperatureMaxY: temperatureMaxY,
          temperatureMinY: temperatureMinY,
          temperaturePoints: data.temperaturePoints,
          airHumidityPoints: data.airHumidityPoints,
          soilHumidityPoints: data.soilHumidityPoints,
        ),
      );
    } catch (_, __) {
      emit(const HistoryState.failure());
    }
  }
}

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = HistoryInitial;
  const factory HistoryState.success({
    required double temperatureMinY,
    required double temperatureMaxY,
    required List<DataPoint> temperaturePoints,
    required List<DataPoint> airHumidityPoints,
    required List<DataPoint> soilHumidityPoints,
  }) = HistorySuccess;
  const factory HistoryState.failure() = HistoryFailure;
}
