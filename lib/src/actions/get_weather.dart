import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_weather.freezed.dart';

@freezed
class GetWeather with _$GetWeather {
  const factory GetWeather(void Function(dynamic action) result) = GetWeatherStart;

  const factory GetWeather.successful(List<String> weatherList) = GetWeatherSuccessful;

  const factory GetWeather.error(Object error, StackTrace stackTrace) = GetWeatherError;
}
