// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetWeatherTearOff {
  const _$GetWeatherTearOff();

  GetWeatherStart call(void Function(dynamic) result) {
    return GetWeatherStart(
      result,
    );
  }

  GetWeatherSuccessful successful(List<String> weatherList) {
    return GetWeatherSuccessful(
      weatherList,
    );
  }

  GetWeatherError error(Object error, StackTrace stackTrace) {
    return GetWeatherError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetWeather = _$GetWeatherTearOff();

/// @nodoc
mixin _$GetWeather {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(dynamic) result) $default, {
    required TResult Function(List<String> weatherList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<String> weatherList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<String> weatherList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherCopyWith<$Res> {
  factory $GetWeatherCopyWith(GetWeather value, $Res Function(GetWeather) then) = _$GetWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetWeatherCopyWithImpl<$Res> implements $GetWeatherCopyWith<$Res> {
  _$GetWeatherCopyWithImpl(this._value, this._then);

  final GetWeather _value;
  // ignore: unused_field
  final $Res Function(GetWeather) _then;
}

/// @nodoc
abstract class $GetWeatherStartCopyWith<$Res> {
  factory $GetWeatherStartCopyWith(GetWeatherStart value, $Res Function(GetWeatherStart) then) =
      _$GetWeatherStartCopyWithImpl<$Res>;
  $Res call({void Function(dynamic) result});
}

/// @nodoc
class _$GetWeatherStartCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherStartCopyWith<$Res> {
  _$GetWeatherStartCopyWithImpl(GetWeatherStart _value, $Res Function(GetWeatherStart) _then)
      : super(_value, (v) => _then(v as GetWeatherStart));

  @override
  GetWeatherStart get _value => super._value as GetWeatherStart;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(GetWeatherStart(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as void Function(dynamic),
    ));
  }
}

/// @nodoc

class _$GetWeatherStart implements GetWeatherStart {
  const _$GetWeatherStart(this.result);

  @override
  final void Function(dynamic) result;

  @override
  String toString() {
    return 'GetWeather(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetWeatherStart &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  $GetWeatherStartCopyWith<GetWeatherStart> get copyWith =>
      _$GetWeatherStartCopyWithImpl<GetWeatherStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(dynamic) result) $default, {
    required TResult Function(List<String> weatherList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<String> weatherList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<String> weatherList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetWeatherStart implements GetWeather {
  const factory GetWeatherStart(void Function(dynamic) result) = _$GetWeatherStart;

  void Function(dynamic) get result;
  @JsonKey(ignore: true)
  $GetWeatherStartCopyWith<GetWeatherStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherSuccessfulCopyWith<$Res> {
  factory $GetWeatherSuccessfulCopyWith(GetWeatherSuccessful value, $Res Function(GetWeatherSuccessful) then) =
      _$GetWeatherSuccessfulCopyWithImpl<$Res>;
  $Res call({List<String> weatherList});
}

/// @nodoc
class _$GetWeatherSuccessfulCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherSuccessfulCopyWith<$Res> {
  _$GetWeatherSuccessfulCopyWithImpl(GetWeatherSuccessful _value, $Res Function(GetWeatherSuccessful) _then)
      : super(_value, (v) => _then(v as GetWeatherSuccessful));

  @override
  GetWeatherSuccessful get _value => super._value as GetWeatherSuccessful;

  @override
  $Res call({
    Object? weatherList = freezed,
  }) {
    return _then(GetWeatherSuccessful(
      weatherList == freezed
          ? _value.weatherList
          : weatherList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GetWeatherSuccessful implements GetWeatherSuccessful {
  const _$GetWeatherSuccessful(this.weatherList);

  @override
  final List<String> weatherList;

  @override
  String toString() {
    return 'GetWeather.successful(weatherList: $weatherList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetWeatherSuccessful &&
            const DeepCollectionEquality().equals(other.weatherList, weatherList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(weatherList));

  @JsonKey(ignore: true)
  @override
  $GetWeatherSuccessfulCopyWith<GetWeatherSuccessful> get copyWith =>
      _$GetWeatherSuccessfulCopyWithImpl<GetWeatherSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(dynamic) result) $default, {
    required TResult Function(List<String> weatherList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(weatherList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<String> weatherList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(weatherList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<String> weatherList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(weatherList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetWeatherSuccessful implements GetWeather {
  const factory GetWeatherSuccessful(List<String> weatherList) = _$GetWeatherSuccessful;

  List<String> get weatherList;
  @JsonKey(ignore: true)
  $GetWeatherSuccessfulCopyWith<GetWeatherSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherErrorCopyWith<$Res> {
  factory $GetWeatherErrorCopyWith(GetWeatherError value, $Res Function(GetWeatherError) then) =
      _$GetWeatherErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetWeatherErrorCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherErrorCopyWith<$Res> {
  _$GetWeatherErrorCopyWithImpl(GetWeatherError _value, $Res Function(GetWeatherError) _then)
      : super(_value, (v) => _then(v as GetWeatherError));

  @override
  GetWeatherError get _value => super._value as GetWeatherError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetWeatherError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetWeatherError implements GetWeatherError {
  const _$GetWeatherError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetWeather.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetWeatherError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $GetWeatherErrorCopyWith<GetWeatherError> get copyWith =>
      _$GetWeatherErrorCopyWithImpl<GetWeatherError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(void Function(dynamic) result) $default, {
    required TResult Function(List<String> weatherList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<String> weatherList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(void Function(dynamic) result)? $default, {
    TResult Function(List<String> weatherList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetWeatherError implements GetWeather {
  const factory GetWeatherError(Object error, StackTrace stackTrace) = _$GetWeatherError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $GetWeatherErrorCopyWith<GetWeatherError> get copyWith => throw _privateConstructorUsedError;
}
