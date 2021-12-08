import 'package:redux/redux.dart';
import '../actions/get_weather.dart';
import '../models/index.dart';

Reducer<AppState> reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, GetWeatherStart>(getWeather),
  TypedReducer<AppState, GetWeatherSuccessful>(getWeatherSuccessful),
  TypedReducer<AppState, GetWeatherError>(getWeatherError),
]);

AppState getWeather(AppState state, GetWeatherStart action) {
  return state.copyWith();
}

AppState getWeatherSuccessful(AppState state, GetWeatherSuccessful action) {
  final List<String> weatherList = <String>[];
  weatherList.addAll(state.weatherList);
  weatherList.addAll(action.weatherList);

  return state.copyWith(
    weatherList: weatherList,
  );
}

AppState getWeatherError(AppState state, GetWeatherError action) {
  return state.copyWith();
}
