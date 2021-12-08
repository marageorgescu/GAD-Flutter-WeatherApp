import 'package:redux_epics/redux_epics.dart';
// ignore: depend_on_referenced_packages
import 'package:rxdart/rxdart.dart';
import '../actions/get_weather.dart';
import '../data/weather_api.dart';
import '../models/index.dart';

class AppEpics {
  AppEpics(this._api);

  final WeatherApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetWeatherStart>(getWeather),
    ]);
  }

  Stream<dynamic> getWeather(Stream<GetWeatherStart> actions, EpicStore<AppState> store) {
    return actions.flatMap<dynamic>((GetWeatherStart action) => Stream<void>.value(null)
        .asyncMap((_) => _api.getWeather())
        .map<Object>((List<String> weatherList) => GetWeather.successful(weatherList))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetWeather.error(error, stackTrace))
        .doOnData(action.result));
  }
}
