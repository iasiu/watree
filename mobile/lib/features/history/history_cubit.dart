import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watree/data/fetch_firebase.dart';
import 'package:watree/data/models.dart';

part 'history_cubit.freezed.dart';

final random = Random();

List<DataPoint> _getDataIn({
  required List<double> values,
}) {
  const rangeX = 7;

  return List.generate(
    168,
    (index) => DataPoint(
      x: index / (168 - 1) * rangeX + 0.5,
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
        airHumidityPoints.add(response['soilHumidityPoints'][i].toDouble());
        soilHumidityPoints.add(response['soilHumidityPoints'][i].toDouble());
        temperaturePoints.add(response['temperaturePoints'][i].toDouble());
      }

      HistoryData data = HistoryData(
        temperaturePoints: _getDataIn(
          values: temperaturePoints,
        )
            .where(
              (e) => e.y != -100.0,
            )
            .toList(),
        airHumidityPoints: _getDataIn(values: airHumidityPoints)
            .where(
              (e) => e.y != -100.0,
            )
            .toList(),
        soilHumidityPoints: _getDataIn(values: soilHumidityPoints)
            .where(
              (e) => e.y != -100.0,
            )
            .toList(),
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
          airHumidityPoints: data.airHumidityPoints
              .where(
                (e) => e.y != -100.0,
              )
              .toList(),
          soilHumidityPoints: data.soilHumidityPoints
              .where(
                (e) => e.y != -100.0,
              )
              .toList(),
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
