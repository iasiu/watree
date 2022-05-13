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

HistoryData _$HistoryDataFromJson(Map<String, dynamic> json) {
  return _HistoryData.fromJson(json);
}

/// @nodoc
class _$HistoryDataTearOff {
  const _$HistoryDataTearOff();

  _HistoryData call(
      {required List<DataPoint> temperaturePoints,
      required List<DataPoint> airHumidityPoints,
      required List<DataPoint> soilHumidityPoints}) {
    return _HistoryData(
      temperaturePoints: temperaturePoints,
      airHumidityPoints: airHumidityPoints,
      soilHumidityPoints: soilHumidityPoints,
    );
  }

  HistoryData fromJson(Map<String, Object?> json) {
    return HistoryData.fromJson(json);
  }
}

/// @nodoc
const $HistoryData = _$HistoryDataTearOff();

/// @nodoc
mixin _$HistoryData {
  List<DataPoint> get temperaturePoints => throw _privateConstructorUsedError;
  List<DataPoint> get airHumidityPoints => throw _privateConstructorUsedError;
  List<DataPoint> get soilHumidityPoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryDataCopyWith<HistoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryDataCopyWith<$Res> {
  factory $HistoryDataCopyWith(
          HistoryData value, $Res Function(HistoryData) then) =
      _$HistoryDataCopyWithImpl<$Res>;
  $Res call(
      {List<DataPoint> temperaturePoints,
      List<DataPoint> airHumidityPoints,
      List<DataPoint> soilHumidityPoints});
}

/// @nodoc
class _$HistoryDataCopyWithImpl<$Res> implements $HistoryDataCopyWith<$Res> {
  _$HistoryDataCopyWithImpl(this._value, this._then);

  final HistoryData _value;
  // ignore: unused_field
  final $Res Function(HistoryData) _then;

  @override
  $Res call({
    Object? temperaturePoints = freezed,
    Object? airHumidityPoints = freezed,
    Object? soilHumidityPoints = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$HistoryDataCopyWith<$Res>
    implements $HistoryDataCopyWith<$Res> {
  factory _$HistoryDataCopyWith(
          _HistoryData value, $Res Function(_HistoryData) then) =
      __$HistoryDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<DataPoint> temperaturePoints,
      List<DataPoint> airHumidityPoints,
      List<DataPoint> soilHumidityPoints});
}

/// @nodoc
class __$HistoryDataCopyWithImpl<$Res> extends _$HistoryDataCopyWithImpl<$Res>
    implements _$HistoryDataCopyWith<$Res> {
  __$HistoryDataCopyWithImpl(
      _HistoryData _value, $Res Function(_HistoryData) _then)
      : super(_value, (v) => _then(v as _HistoryData));

  @override
  _HistoryData get _value => super._value as _HistoryData;

  @override
  $Res call({
    Object? temperaturePoints = freezed,
    Object? airHumidityPoints = freezed,
    Object? soilHumidityPoints = freezed,
  }) {
    return _then(_HistoryData(
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
@JsonSerializable()
class _$_HistoryData implements _HistoryData {
  const _$_HistoryData(
      {required this.temperaturePoints,
      required this.airHumidityPoints,
      required this.soilHumidityPoints});

  factory _$_HistoryData.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryDataFromJson(json);

  @override
  final List<DataPoint> temperaturePoints;
  @override
  final List<DataPoint> airHumidityPoints;
  @override
  final List<DataPoint> soilHumidityPoints;

  @override
  String toString() {
    return 'HistoryData(temperaturePoints: $temperaturePoints, airHumidityPoints: $airHumidityPoints, soilHumidityPoints: $soilHumidityPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryData &&
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
      const DeepCollectionEquality().hash(temperaturePoints),
      const DeepCollectionEquality().hash(airHumidityPoints),
      const DeepCollectionEquality().hash(soilHumidityPoints));

  @JsonKey(ignore: true)
  @override
  _$HistoryDataCopyWith<_HistoryData> get copyWith =>
      __$HistoryDataCopyWithImpl<_HistoryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryDataToJson(this);
  }
}

abstract class _HistoryData implements HistoryData {
  const factory _HistoryData(
      {required List<DataPoint> temperaturePoints,
      required List<DataPoint> airHumidityPoints,
      required List<DataPoint> soilHumidityPoints}) = _$_HistoryData;

  factory _HistoryData.fromJson(Map<String, dynamic> json) =
      _$_HistoryData.fromJson;

  @override
  List<DataPoint> get temperaturePoints;
  @override
  List<DataPoint> get airHumidityPoints;
  @override
  List<DataPoint> get soilHumidityPoints;
  @override
  @JsonKey(ignore: true)
  _$HistoryDataCopyWith<_HistoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

DataPoint _$DataPointFromJson(Map<String, dynamic> json) {
  return _DataPoint.fromJson(json);
}

/// @nodoc
class _$DataPointTearOff {
  const _$DataPointTearOff();

  _DataPoint call({required double x, required double y}) {
    return _DataPoint(
      x: x,
      y: y,
    );
  }

  DataPoint fromJson(Map<String, Object?> json) {
    return DataPoint.fromJson(json);
  }
}

/// @nodoc
const $DataPoint = _$DataPointTearOff();

/// @nodoc
mixin _$DataPoint {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPointCopyWith<DataPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPointCopyWith<$Res> {
  factory $DataPointCopyWith(DataPoint value, $Res Function(DataPoint) then) =
      _$DataPointCopyWithImpl<$Res>;
  $Res call({double x, double y});
}

/// @nodoc
class _$DataPointCopyWithImpl<$Res> implements $DataPointCopyWith<$Res> {
  _$DataPointCopyWithImpl(this._value, this._then);

  final DataPoint _value;
  // ignore: unused_field
  final $Res Function(DataPoint) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$DataPointCopyWith<$Res> implements $DataPointCopyWith<$Res> {
  factory _$DataPointCopyWith(
          _DataPoint value, $Res Function(_DataPoint) then) =
      __$DataPointCopyWithImpl<$Res>;
  @override
  $Res call({double x, double y});
}

/// @nodoc
class __$DataPointCopyWithImpl<$Res> extends _$DataPointCopyWithImpl<$Res>
    implements _$DataPointCopyWith<$Res> {
  __$DataPointCopyWithImpl(_DataPoint _value, $Res Function(_DataPoint) _then)
      : super(_value, (v) => _then(v as _DataPoint));

  @override
  _DataPoint get _value => super._value as _DataPoint;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_DataPoint(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataPoint implements _DataPoint {
  const _$_DataPoint({required this.x, required this.y});

  factory _$_DataPoint.fromJson(Map<String, dynamic> json) =>
      _$$_DataPointFromJson(json);

  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'DataPoint(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataPoint &&
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y));

  @JsonKey(ignore: true)
  @override
  _$DataPointCopyWith<_DataPoint> get copyWith =>
      __$DataPointCopyWithImpl<_DataPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataPointToJson(this);
  }
}

abstract class _DataPoint implements DataPoint {
  const factory _DataPoint({required double x, required double y}) =
      _$_DataPoint;

  factory _DataPoint.fromJson(Map<String, dynamic> json) =
      _$_DataPoint.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$DataPointCopyWith<_DataPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
