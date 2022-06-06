import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watree/data/fetch_firebase.dart';
import 'package:watree/data/models.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  Future<void> load() async {
    emit(const HomeState.loading());
    try {
      HomeData homeData = await FetchFirebase().getHomeData();

      emit(HomeState.success(data: homeData));
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
