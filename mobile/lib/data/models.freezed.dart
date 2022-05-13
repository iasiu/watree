// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeData _$HomeDataFromJson(Map<String, dynamic> json) {
  return _HomeData.fromJson(json);
}

/// @nodoc
class _$HomeDataTearOff {
  const _$HomeDataTearOff();

  _HomeData call(
      {required double temperature,
      required double airHumidity,
      required double soilHumidity,
      required bool isWatering}) {
    return _HomeData(
      temperature: temperature,
      airHumidity: airHumidity,
      soilHumidity: soilHumidity,
      isWatering: isWatering,
    );
  }

  HomeData fromJson(Map<String, Object?> json) {
    return HomeData.fromJson(json);
  }
}

/// @nodoc
const $HomeData = _$HomeDataTearOff();

/// @nodoc
mixin _$HomeData {
  double get temperature => throw _privateConstructorUsedError;
  double get airHumidity => throw _privateConstructorUsedError;
  double get soilHumidity => throw _privateConstructorUsedError;
  bool get isWatering => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDataCopyWith<HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataCopyWith<$Res> {
  factory $HomeDataCopyWith(HomeData value, $Res Function(HomeData) then) =
      _$HomeDataCopyWithImpl<$Res>;
  $Res call(
      {double temperature,
      double airHumidity,
      double soilHumidity,
      bool isWatering});
}

/// @nodoc
class _$HomeDataCopyWithImpl<$Res> implements $HomeDataCopyWith<$Res> {
  _$HomeDataCopyWithImpl(this._value, this._then);

  final HomeData _value;
  // ignore: unused_field
  final $Res Function(HomeData) _then;

  @override
  $Res call({
    Object? temperature = freezed,
    Object? airHumidity = freezed,
    Object? soilHumidity = freezed,
    Object? isWatering = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      airHumidity: airHumidity == freezed
          ? _value.airHumidity
          : airHumidity // ignore: cast_nullable_to_non_nullable
              as double,
      soilHumidity: soilHumidity == freezed
          ? _value.soilHumidity
          : soilHumidity // ignore: cast_nullable_to_non_nullable
              as double,
      isWatering: isWatering == freezed
          ? _value.isWatering
          : isWatering // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$HomeDataCopyWith<$Res> implements $HomeDataCopyWith<$Res> {
  factory _$HomeDataCopyWith(_HomeData value, $Res Function(_HomeData) then) =
      __$HomeDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {double temperature,
      double airHumidity,
      double soilHumidity,
      bool isWatering});
}

/// @nodoc
class __$HomeDataCopyWithImpl<$Res> extends _$HomeDataCopyWithImpl<$Res>
    implements _$HomeDataCopyWith<$Res> {
  __$HomeDataCopyWithImpl(_HomeData _value, $Res Function(_HomeData) _then)
      : super(_value, (v) => _then(v as _HomeData));

  @override
  _HomeData get _value => super._value as _HomeData;

  @override
  $Res call({
    Object? temperature = freezed,
    Object? airHumidity = freezed,
    Object? soilHumidity = freezed,
    Object? isWatering = freezed,
  }) {
    return _then(_HomeData(
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      airHumidity: airHumidity == freezed
          ? _value.airHumidity
          : airHumidity // ignore: cast_nullable_to_non_nullable
              as double,
      soilHumidity: soilHumidity == freezed
          ? _value.soilHumidity
          : soilHumidity // ignore: cast_nullable_to_non_nullable
              as double,
      isWatering: isWatering == freezed
          ? _value.isWatering
          : isWatering // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeData implements _HomeData {
  const _$_HomeData(
      {required this.temperature,
      required this.airHumidity,
      required this.soilHumidity,
      required this.isWatering});

  factory _$_HomeData.fromJson(Map<String, dynamic> json) =>
      _$$_HomeDataFromJson(json);

  @override
  final double temperature;
  @override
  final double airHumidity;
  @override
  final double soilHumidity;
  @override
  final bool isWatering;

  @override
  String toString() {
    return 'HomeData(temperature: $temperature, airHumidity: $airHumidity, soilHumidity: $soilHumidity, isWatering: $isWatering)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeData &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature) &&
            const DeepCollectionEquality()
                .equals(other.airHumidity, airHumidity) &&
            const DeepCollectionEquality()
                .equals(other.soilHumidity, soilHumidity) &&
            const DeepCollectionEquality()
                .equals(other.isWatering, isWatering));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temperature),
      const DeepCollectionEquality().hash(airHumidity),
      const DeepCollectionEquality().hash(soilHumidity),
      const DeepCollectionEquality().hash(isWatering));

  @JsonKey(ignore: true)
  @override
  _$HomeDataCopyWith<_HomeData> get copyWith =>
      __$HomeDataCopyWithImpl<_HomeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeDataToJson(this);
  }
}

abstract class _HomeData implements HomeData {
  const factory _HomeData(
      {required double temperature,
      required double airHumidity,
      required double soilHumidity,
      required bool isWatering}) = _$_HomeData;

  factory _HomeData.fromJson(Map<String, dynamic> json) = _$_HomeData.fromJson;

  @override
  double get temperature;
  @override
  double get airHumidity;
  @override
  double get soilHumidity;
  @override
  bool get isWatering;
  @override
  @JsonKey(ignore: true)
  _$HomeDataCopyWith<_HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}
