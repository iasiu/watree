import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/data/models.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  Future<void> load() async {
    emit(const HomeState.loading());
    try {
      // TODO(iasiu): unmock when backend is ready
      final data = await Future.delayed(
        const Duration(seconds: 3),
      ).then(
        (_) => const HomeData(
          temperature: 29.1,
          airHumidity: 0.56,
          soilHumidity: 0.78,
          isWatering: false,
        ),
      );

      emit(HomeState.success(data: data));
    } catch (_, __) {
      emit(const HomeState.failure());
    }
  }

  Future<void> scheduleWatering() async {
    // TODO(iasiu): implement when backend is ready
  }
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.success({
    required HomeData data,
  }) = HomeSuccess;
  const factory HomeState.failure() = HomeFailure;
}
