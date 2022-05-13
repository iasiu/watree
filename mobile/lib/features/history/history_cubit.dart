import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watree/data/models.dart';

part 'history_cubit.freezed.dart';

final random = Random();

double _getRandomIn({
  required double min,
  required double max,
}) {
  final range = max - min;
  return random.nextDouble() * range + min;
}

List<DataPoint> _getRandomDataIn({
  required double min,
  required double max,
  int count = 10,
}) {
  const rangeX = 7.5 - 0.5;

  return List.generate(
    count,
    (index) => DataPoint(
      x: index / (count - 1) * rangeX + 0.5,
      y: _getRandomIn(min: min, max: max),
    ),
  );
}

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit() : super(const HistoryState.initial());

  Future<void> load() async {
    try {
      // TODO(iasiu): unmock when backend is ready
      final data = await Future.delayed(
        const Duration(seconds: 2),
      ).then(
        (_) => HistoryData(
          temperaturePoints: _getRandomDataIn(min: 18, max: 24),
          airHumidityPoints: _getRandomDataIn(min: 0, max: 100),
          soilHumidityPoints: _getRandomDataIn(min: 0, max: 100),
        ),
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
