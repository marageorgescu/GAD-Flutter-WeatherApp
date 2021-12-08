// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';
import 'package:http/http.dart';
import 'package:location/location.dart';

class WeatherApi {
  Future<List<String>> getWeather() async {
    final Location location = Location();
    final LocationData pos = await location.getLocation();
    final String lat = pos.latitude!.toStringAsFixed(2);
    final String long = pos.longitude!.toStringAsFixed(2);

    String fiveDaysBeforeStr = '';
    String fourDaysBeforeStr = '';
    String threeDaysBeforeStr = '';
    String twoDaysBeforeStr = '';
    String oneDayBeforeStr = '';
    String currentStr = '';
    String oneDayAfterStr = '';
    String twoDaysAfterStr = '';
    String threeDaysAfterStr = '';
    String fourDaysAfterStr = '';
    String fiveDaysAfterStr = '';

    final Uri uri = Uri.parse(
        'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$long&exclude=hourly,minutely&appid=93e1779a9b391fb5359e1b54e2703260');

    final Response resp =
        await get(uri, headers: <String, String>{'X-CMC_PRO_API_KEY': '93e1779a9b391fb5359e1b54e2703260'});

    if (resp.statusCode == 200) {
      final Map<String, dynamic> body = jsonDecode(resp.body) as Map<String, dynamic>;
      final List<dynamic> daily = body['daily'] as List<dynamic>;
      final Map<String, dynamic> current = body['current'] as Map<String, dynamic>;
      final int dtOneBefore =
          DateTime.fromMillisecondsSinceEpoch(((current['dt'] as int) - 24 * 60 * 60) * 1000).millisecondsSinceEpoch;
      final int dtTwoBefore =
          DateTime.fromMillisecondsSinceEpoch(dtOneBefore - 24 * 60 * 60 * 1000).millisecondsSinceEpoch;
      final int dtThreeBefore =
          DateTime.fromMillisecondsSinceEpoch(dtTwoBefore - 24 * 60 * 60 * 1000).millisecondsSinceEpoch;
      final int dtFourBefore =
          DateTime.fromMillisecondsSinceEpoch(dtThreeBefore - 24 * 60 * 60 * 1000).millisecondsSinceEpoch;
      final int dtFiveBefore =
          DateTime.fromMillisecondsSinceEpoch(dtFourBefore - 24 * 60 * 60 * 1000).millisecondsSinceEpoch;
      final int dtOneBeforeSec = (dtOneBefore / 1000).round();
      final int dtTwoBeforeSec = (dtTwoBefore / 1000).round();
      final int dtThreeBeforeSec = (dtThreeBefore / 1000).round();
      final int dtFourBeforeSec = (dtFourBefore / 1000).round();
      final int dtFiveBeforeSec = (dtFiveBefore / 1000).round();

      final String city = body['timezone'] as String;

      int cnt = 0;

      int i;

      for (i = 0; i < daily.length; i++) {
        final Map<String, dynamic> elem = daily[i] as Map<String, dynamic>;
        final DateTime dt = DateTime.fromMillisecondsSinceEpoch((elem['dt'] as int) * 1000);
        final num year = dt.year;
        final num month = dt.month;
        final num day = dt.day;
        final num tMin = kelvinToCelsius(elem['temp']['min'] as num).round();
        final num tMax = kelvinToCelsius(elem['temp']['max'] as num).round();
        final String weather = elem['weather'][0]['main'] as String;
        final num humidity = elem['humidity'] as num;
        final String icon = elem['weather'][0]['icon'] as String;

        if (cnt == 0) {
          currentStr = '$dt $year-$month-$day $tMin $tMax $weather $humidity $lat $long $city $icon';
        } else if (cnt == 1) {
          oneDayAfterStr = '$dt $year-$month-$day $tMin $tMax $weather $humidity $lat $long $city $icon';
        } else if (cnt == 2) {
          twoDaysAfterStr = '$dt $year-$month-$day $tMin $tMax $weather $humidity $lat $long $city $icon';
        } else if (cnt == 3) {
          threeDaysAfterStr = '$dt $year-$month-$day $tMin $tMax $weather $humidity $lat $long $city $icon';
        } else if (cnt == 4) {
          fourDaysAfterStr = '$dt $year-$month-$day $tMin $tMax $weather $humidity $lat $long $city $icon';
        } else if (cnt == 5) {
          fiveDaysAfterStr = '$dt $year-$month-$day $tMin $tMax $weather $humidity $lat $long $city $icon';
        }

        cnt = cnt + 1;
      }

      final Uri uri1 = Uri.parse(
          'https://api.openweathermap.org/data/2.5/onecall/timemachine?lat=$lat&lon=$long&dt=$dtOneBeforeSec&appid=93e1779a9b391fb5359e1b54e2703260');
      final Uri uri2 = Uri.parse(
          'https://api.openweathermap.org/data/2.5/onecall/timemachine?lat=$lat&lon=$long&dt=$dtTwoBeforeSec&appid=93e1779a9b391fb5359e1b54e2703260');
      final Uri uri3 = Uri.parse(
          'https://api.openweathermap.org/data/2.5/onecall/timemachine?lat=$lat&lon=$long&dt=$dtThreeBeforeSec&appid=93e1779a9b391fb5359e1b54e2703260');
      final Uri uri4 = Uri.parse(
          'https://api.openweathermap.org/data/2.5/onecall/timemachine?lat=$lat&lon=$long&dt=$dtFourBeforeSec&appid=93e1779a9b391fb5359e1b54e2703260');
      final Uri uri5 = Uri.parse(
          'https://api.openweathermap.org/data/2.5/onecall/timemachine?lat=$lat&lon=$long&dt=$dtFiveBeforeSec&appid=93e1779a9b391fb5359e1b54e2703260');

      final Response resp1 =
          await get(uri1, headers: <String, String>{'X-CMC_PRO_API_KEY': '93e1779a9b391fb5359e1b54e2703260'});
      final Response resp2 =
          await get(uri2, headers: <String, String>{'X-CMC_PRO_API_KEY': '93e1779a9b391fb5359e1b54e2703260'});
      final Response resp3 =
          await get(uri3, headers: <String, String>{'X-CMC_PRO_API_KEY': '93e1779a9b391fb5359e1b54e2703260'});
      final Response resp4 =
          await get(uri4, headers: <String, String>{'X-CMC_PRO_API_KEY': '93e1779a9b391fb5359e1b54e2703260'});
      final Response resp5 =
          await get(uri5, headers: <String, String>{'X-CMC_PRO_API_KEY': '93e1779a9b391fb5359e1b54e2703260'});

      if (resp1.statusCode == 200 &&
          resp2.statusCode == 200 &&
          resp3.statusCode == 200 &&
          resp4.statusCode == 200 &&
          resp5.statusCode == 200) {
        oneDayBeforeStr = getOneDayHistoryWeather(resp1, 0, city, lat, long, oneDayBeforeStr, twoDaysBeforeStr,
            threeDaysBeforeStr, fourDaysBeforeStr, fiveDaysBeforeStr);
        twoDaysBeforeStr = getOneDayHistoryWeather(resp2, 1, city, lat, long, oneDayBeforeStr, twoDaysBeforeStr,
            threeDaysBeforeStr, fourDaysBeforeStr, fiveDaysBeforeStr);
        threeDaysBeforeStr = getOneDayHistoryWeather(resp3, 2, city, lat, long, oneDayBeforeStr, twoDaysBeforeStr,
            threeDaysBeforeStr, fourDaysBeforeStr, fiveDaysBeforeStr);
        fourDaysBeforeStr = getOneDayHistoryWeather(resp4, 3, city, lat, long, oneDayBeforeStr, twoDaysBeforeStr,
            threeDaysBeforeStr, fourDaysBeforeStr, fiveDaysBeforeStr);
        fiveDaysBeforeStr = getOneDayHistoryWeather(resp5, 4, city, lat, long, oneDayBeforeStr, twoDaysBeforeStr,
            threeDaysBeforeStr, fourDaysBeforeStr, fiveDaysBeforeStr);
      } else {
        throw StateError('Error fetching the history weather.');
      }
    } else {
      throw StateError('Error fetching the current and future weather.');
    }

    final List<String> weatherList = <String>[];
    weatherList.add(fiveDaysBeforeStr);
    weatherList.add(fourDaysBeforeStr);
    weatherList.add(threeDaysBeforeStr);
    weatherList.add(twoDaysBeforeStr);
    weatherList.add(oneDayBeforeStr);
    weatherList.add(currentStr);
    weatherList.add(oneDayAfterStr);
    weatherList.add(twoDaysAfterStr);
    weatherList.add(threeDaysAfterStr);
    weatherList.add(fourDaysAfterStr);
    weatherList.add(fiveDaysAfterStr);

    return weatherList;
  }

  double kelvinToCelsius(num kelvin) {
    return kelvin - 273.15;
  }

  String getOneDayHistoryWeather(Response resp1, int cnt1, String city, String lat, String long, String oneDayBeforeStr,
      String twoDaysBeforeStr, String threeDaysBeforeStr, String fourDaysBeforeStr, String fiveDaysBeforeStr) {
    final Map<String, dynamic> body1 = jsonDecode(resp1.body) as Map<String, dynamic>;
    final Map<String, dynamic> current = body1['current'] as Map<String, dynamic>;
    final DateTime dt1 = DateTime.fromMillisecondsSinceEpoch((current['dt'] as int) * 1000);
    final num year1 = dt1.year;
    final num month1 = dt1.month;
    final num day1 = dt1.day;
    final num t1 = kelvinToCelsius(current['temp'] as num).round();
    final String weather1 = current['weather'][0]['main'] as String;
    final num humidity1 = current['humidity'] as num;
    final String icon1 = current['weather'][0]['icon'] as String;

    if (cnt1 == 0) {
      oneDayBeforeStr = '$dt1 $year1-$month1-$day1 $t1 $weather1 $humidity1 $city $lat $long $icon1';
      return oneDayBeforeStr;
    } else if (cnt1 == 1) {
      twoDaysBeforeStr = '$dt1 $year1-$month1-$day1 $t1 $weather1 $humidity1 $city $lat $long $icon1';
      return twoDaysBeforeStr;
    } else if (cnt1 == 2) {
      threeDaysBeforeStr = '$dt1 $year1-$month1-$day1 $t1 $weather1 $humidity1 $city $lat $long $icon1';
      return threeDaysBeforeStr;
    } else if (cnt1 == 3) {
      fourDaysBeforeStr = '$dt1 $year1-$month1-$day1 $t1 $weather1 $humidity1 $city $lat $long $icon1';
      return fourDaysBeforeStr;
    } else if (cnt1 == 4) {
      fiveDaysBeforeStr = '$dt1 $year1-$month1-$day1 $t1 $weather1 $humidity1 $city $lat $long $icon1';
      return fiveDaysBeforeStr;
    }
    return '';
  }
}
