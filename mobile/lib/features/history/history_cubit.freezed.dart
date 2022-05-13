// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryStateTearOff {
  const _$HistoryStateTearOff();

  HistoryInitial initial() {
    return const HistoryInitial();
  }

  HistorySuccess success(
      {required double temperatureMinY,
      required double temperatureMaxY,
      required List<DataPoint> temperaturePoints,
      required List<DataPoint> airHumidityPoints,
      required List<DataPoint> soilHumidityPoints}) {
    return HistorySuccess(
      temperatureMinY: temperatureMinY,
      temperatureMaxY: temperatureMaxY,
      temperaturePoints: temperaturePoints,
      airHumidityPoints: airHumidityPoints,
      soilHumidityPoints: soilHumidityPoints,
    );
  }

  HistoryFailure failure() {
    return const HistoryFailure();
  }
}

/// @nodoc
const $HistoryState = _$HistoryStateTearOff();

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            double temperatureMinY,
            double temperatureMaxY,
            List<DataPoint> temperaturePoints,
            List<DataPoint> airHumidityPoints,
            List<DataPoint> soilHumidityPoints)
        success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double temperatureMinY,
            double temperatureMaxY,
            List<DataPoint> temperaturePoints,
            List<DataPoint> airHumidityPoints,
            List<DataPoint> soilHumidityPoints)?
        success,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double temperatureMinY,
            double temperatureMaxY,
            List<DataPoint> temperaturePoints,
            List<DataPoint> airHumidityPoints,
            List<DataPoint> soilHumidityPoints)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryInitial value) initial,
    required TResult Function(HistorySuccess value) success,
    required TResult Function(HistoryFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistorySuccess value)? success,
    TResult Function(HistoryFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistorySuccess value)? success,
    TResult Function(HistoryFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;
}

/// @nodoc
abstract class $HistoryInitialCopyWith<$Res> {
  factory $HistoryInitialCopyWith(
          HistoryInitial value, $Res Function(HistoryInitial) then) =
      _$HistoryInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryInitialCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements $HistoryInitialCopyWith<$Res> {
  _$HistoryInitialCopyWithImpl(
      HistoryInitial _value, $Res Function(HistoryInitial) _then)
      : super(_value, (v) => _then(v as HistoryInitial));

  @override
  HistoryInitial get _value => super._value as HistoryInitial;
}

/// @nodoc

class _$HistoryInitial implements HistoryInitial {
  const _$HistoryInitial();

  @override
  String toString() {
    return 'HistoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HistoryInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            double temperatureMinY,
            double temperatureMaxY,
            List<DataPoint> temperaturePoints,
            List<DataPoint> airHumidityPoints,
            List<DataPoint> soilHumidityPoints)
        success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double temperatureMinY,
            double temperatureMaxY,
            List<DataPoint> temperaturePoints,
            List<DataPoint> airHumidityPoints,
            List<DataPoint> soilHumidityPoints)?
        success,
    TResult Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double temperatureMinY,
            double temperatureMaxY,
            List<DataPoint> temperaturePoints,
            List<DataPoint> airHumidityPoints,
            List<DataPoint> soilHumidityPoints)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryInitial value) initial,
    required TResult Function(HistorySuccess value) success,
    required TResult Function(HistoryFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistorySuccess value)? success,
    TResult Function(HistoryFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistorySuccess value)? success,
    TResult Function(HistoryFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HistoryInitial implements HistoryState {
  const factory HistoryInitial() = _$HistoryInitial;
}

/// @nodoc
abstract class $HistorySuccessCopyWith<$Res> {
  factory $HistorySuccessCopyWith(
          HistorySuccess value, $Res Function(HistorySuccess) then) =
      _$HistorySuccessCopyWithImpl<$Res>;
  $Res call(
      {double temperatureMinY,
      double temperatureMaxY,
      List<DataPoint> temperaturePoints,
      List<DataPoint> airHumidityPoints,
      List<DataPoint> soilHumidityPoints});
}

/// @nodoc
class _$HistorySuccessCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements $HistorySuccessCopyWith<$Res> {
  _$HistorySuccessCopyWithImpl(
      HistorySuccess _value, $Res Function(HistorySuccess) _then)
      : super(_value, (v) => _then(v as HistorySuccess));

  @override
  HistorySuccess get _value => super._value as HistorySuccess;

  @override
  $Res call({
    Object? temperatureMinY = freezed,
    Object? temperatureMaxY = freezed,
    Object? temperaturePoints = freezed,
    Object? airHumidityPoints = freezed,
    Object? soilHumidityPoints = freezed,
  }) {
    return _then(HistorySuccess(
      temperatureMinY: temperatureMinY == freezed
          ? _value.temperatureMinY
          : temperatureMinY // ignore: cast_nullable_to_non_nullable
              as double,
      temperatureMaxY: temperatureMaxY == freezed
          ? _value.temperatureMaxY
          : temperatureMaxY // ignore: cast_nullable_to_non_nullable
              as double,
      temperaturePoints: temperaturePoints == freezed
          ? _value.temperaturePoints
          : temperaturePoints // ignore: cast_nullable_to_non_nullable
              as List<DataPoint>,
      airHumidityPoints: airHumidityPoints == freezed
          ? _value.airHumidityPoints
          : airHumidityPoints // ignore: cast_nullable_to_non_nullable
              as List<DataPoint>,
      soilHumidityPoints: soilHumidityPoints == freezed
          ? _value.soilHumidityPoints
          : soilHumidityPoints // ignore: cast_nullable_to_non_nullable
              as List<DataPoint>,
    ));
  }
}

/// @nodoc

class _$HistorySuccess implements HistorySuccess {
  const _$HistorySuccess(
      {required this.temperatureMinY,
      required this.temperatureMaxY,
      required this.temperaturePoints,
      required this.airHumidityPoints,
      required this.soilHumidityPoints});

  @override
  final double temperatureMinY;
  @override
  final double temperatureMaxY;
  @override
  final List<DataPoint> temperaturePoints;
  @override
  final List<DataPoint> airHumidityPoints;
  @override
  final List<DataPoint> soilHumidityPoints;

  @override
  String toString() {
    return 'HistoryState.success(temperatureMinY: $temperatureMinY, temperatureMaxY: $temperatureMaxY, temperaturePoints: $temperaturePoints, airHumidityPoints: $airHumidityPoints, soilHumidityPoints: $soilHumidityPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HistorySuccess &&
            const DeepCollectionEquality()
                .equals(other.temperatureMinY, temperatureMinY) &&
            const DeepCollectionEquality()
                .equals(other.temperatureMaxY, temperatureMaxY) &&
            const DeepCollectionEquality()
                .equals(other.temperaturePoints, temperaturePoints) &&
            const DeepCollectionEquality()
                .equals(other.airHumidityPoints, airHumidityPoints) &&
            const DeepCollectionEquality()
                .equals(other.soilHumidityPoints, soilHumidityPoints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temperatureMinY),
      const DeepCollectionEquality().hash(temperatureMaxY),
      const DeepCollectionEquality().hash(temperaturePoints),
      const DeepCollectionEquality().hash(airHumidityPoints),
      const DeepCollectionEquality().hash(soilHumidityPoints));

  @JsonKey(ignore: true)
  @override
  $HistorySuccessCopyWith<HistorySuccess> get copyWith =>
      _$HistorySuccessCopyWithImpl<HistorySuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            double temperatureMinY,
            double temperatureMaxY,
            List<DataPoint> temperaturePoints,
            List<DataPoint> airHumidityPoints,
            List<DataPoint> soilHumidityPoints)
        success,
    required TResult Function() failure,
  }) {
    return success(temperatureMinY, temperatureMaxY, temperaturePoints,
        airHumidityPoints, soilHumidityPoints);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double temperatureMinY,
            double temperatureMaxY,
            List<DataPoint> temperaturePoints,
            List<DataPoint> airHumidityPoints,
            List<DataPoint> soilHumidityPoints)?
        success,
    TResult Function()? failure,
  }) {
    return success?.call(temperatureMinY, temperatureMaxY, temperaturePoints,
        airHumidityPoints, soilHumidityPoints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double temperatureMinY,
            double temperatureMaxY,
            List<DataPoint> temperaturePoints,
            List<DataPoint> airHumidityPoints,
            List<DataPoint> soilHumidityPoints)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(temperatureMinY, temperatureMaxY, temperaturePoints,
          airHumidityPoints, soilHumidityPoints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryInitial value) initial,
    required TResult Function(HistorySuccess value) success,
    required TResult Function(HistoryFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistorySuccess value)? success,
    TResult Function(HistoryFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistorySuccess value)? success,
    TResult Function(HistoryFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HistorySuccess implements HistoryState {
  const factory HistorySuccess(
      {required double temperatureMinY,
      required double temperatureMaxY,
      required List<DataPoint> temperaturePoints,
      required List<DataPoint> airHumidityPoints,
      required List<DataPoint> soilHumidityPoints}) = _$HistorySuccess;

  double get temperatureMinY;
  double get temperatureMaxY;
  List<DataPoint> get temperaturePoints;
  List<DataPoint> get airHumidityPoints;
  List<DataPoint> get soilHumidityPoints;
  @JsonKey(ignore: true)
  $HistorySuccessCopyWith<HistorySuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryFailureCopyWith<$Res> {
  factory $HistoryFailureCopyWith(
          HistoryFailure value, $Res Function(HistoryFailure) then) =
      _$HistoryFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryFailureCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements $HistoryFailureCopyWith<$Res> {
  _$HistoryFailureCopyWithImpl(
      HistoryFailure _value, $Res Function(HistoryFailure) _then)
      : super(_value, (v) => _then(v as HistoryFailure));

  @override
  HistoryFailure get _value => super._value as HistoryFailure;
}

/// @nodoc

class _$HistoryFailure implements HistoryFailure {
  const _$HistoryFailure();

  @override
  String toString() {
    return 'HistoryState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HistoryFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            double temperatureMinY,
            double temperatureMaxY,
            List<DataPoint> temperaturePoints,
            List<DataPoint> airHumidityPoints,
            List<DataPoint> soilHumidityPoints)
        success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double temperatureMinY,
            double temperatureMaxY,
            List<DataPoint> temperaturePoints,
            List<DataPoint> airHumidityPoints,
            List<DataPoint> soilHumidityPoints)?
        success,
    TResult Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double temperatureMinY,
            double temperatureMaxY,
            List<DataPoint> temperaturePoints,
            List<DataPoint> airHumidityPoints,
            List<DataPoint> soilHumidityPoints)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryInitial value) initial,
    required TResult Function(HistorySuccess value) success,
    required TResult Function(HistoryFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistorySuccess value)? success,
    TResult Function(HistoryFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistorySuccess value)? success,
    TResult Function(HistoryFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HistoryFailure implements HistoryState {
  const factory HistoryFailure() = _$HistoryFailure;
}
