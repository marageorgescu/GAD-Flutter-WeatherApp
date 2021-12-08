import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import '../actions/get_weather.dart';
import '../containers/weather_list_container.dart';
import '../models/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<HomePage> {
  final FixedExtentScrollController _myController = FixedExtentScrollController(initialItem: 5);

  @override
  void initState() {
    super.initState();

    final Store<AppState> store = StoreProvider.of<AppState>(context, listen: false);
    store.dispatch(GetWeather(onResult));
  }

  void onResult(dynamic action) {
    if (action is GetWeatherError) {
      showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Error getting weather'),
              content: Text('${action.error}'),
            );
          });
    }
  }

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(getBackgroundImageUri()),
            fit: BoxFit.cover,
          ),
        ),
        child: WeatherListContainer(
          builder: (BuildContext context, List<String> weatherList) {
            return ListWheelScrollView(
              controller: _myController,
              itemExtent: 250,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: displayHistoryWeather(weatherList[0]),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: displayHistoryWeather(weatherList[1]),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: displayHistoryWeather(weatherList[2]),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: displayHistoryWeather(weatherList[3]),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: displayHistoryWeather(weatherList[4]),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: displayCurrentFutureWeather(weatherList[5]),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: displayCurrentFutureWeather(weatherList[6]),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: displayCurrentFutureWeather(weatherList[7]),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: displayCurrentFutureWeather(weatherList[8]),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: displayCurrentFutureWeather(weatherList[9]),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: displayCurrentFutureWeather(weatherList[10]),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget displayCurrentFutureWeather(String str) {
    //"$dt $year-$month-$day $tMin $tMax $weather $humidity $lat $long $city $icon"
    final List<String> split = str.split(' ');
    final DateTime dt = DateTime.parse(split[0]);
    final String date = '${getMonth(dt.month)} ${dt.day} ${dt.year}';
    final String weekday = getWeekday(dt.weekday);
    final String tMin = '${split[3]}°';
    final String tMax = '${split[4]}°';
    final String weather = split[5];
    final String humidity = 'Humidity: ${split[6]}%';
    final String city = split[9].split('/').last;
    final String iconUri = 'https://openweathermap.org/img/wn/${split[10]}@2x.png';

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
          child: Text(
            date,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        Text(
          weekday,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        Text(
          '$city $tMin $tMax',
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              weather,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            Image.network(
              iconUri,
            ),
          ],
        ),
        Text(
          humidity,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget displayHistoryWeather(String str) {
    //"$dt1 $year1-$month1-$day1 $t1 $weather1 $humidity1 $city $lat $long $icon1"
    final List<String> split = str.split(' ');
    final DateTime dt = DateTime.parse(split[0]);
    final String hour = '${split[1].split(':')[0]}:${split[1].split(':')[0]}';
    final String date = '${getMonth(dt.month)} ${dt.day} ${dt.year}';
    final String weekday = getWeekday(dt.weekday);
    final String temp = '${split[3]}°';
    final String weather = split[4];
    final String humidity = 'Humidity: ${split[5]}%';
    final String city = split[6].split('/').last;
    final String iconUri = 'https://openweathermap.org/img/wn/${split[9]}@2x.png';

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
          child: Text(
            date,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        Text(
          '$weekday $hour',
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        Text(
          '$city $temp',
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              weather,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            Image.network(
              iconUri,
            ),
          ],
        ),
        Text(
          humidity,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  String getWeekday(int weekday) {
    if (weekday == 1) {
      return 'Monday';
    } else if (weekday == 2) {
      return 'Tuesday';
    } else if (weekday == 3) {
      return 'Wednesday';
    } else if (weekday == 4) {
      return 'Thursday';
    } else if (weekday == 5) {
      return 'Friday';
    } else if (weekday == 6) {
      return 'Saturday';
    } else if (weekday == 7) {
      return 'Sunday';
    } else {
      return '';
    }
  }

  String getMonth(int month) {
    if (month == 1) {
      return 'January';
    } else if (month == 2) {
      return 'February';
    } else if (month == 3) {
      return 'March';
    } else if (month == 4) {
      return 'April';
    } else if (month == 5) {
      return 'May';
    } else if (month == 6) {
      return 'June';
    } else if (month == 7) {
      return 'July';
    } else if (month == 8) {
      return 'August';
    } else if (month == 9) {
      return 'September';
    } else if (month == 10) {
      return 'October';
    } else if (month == 11) {
      return 'November';
    } else if (month == 12) {
      return 'December';
    } else {
      return '';
    }
  }

  String getBackgroundImageUri() {
    if (DateTime.now().hour >= 7 && DateTime.now().hour <= 17) {
      return 'https://images.unsplash.com/photo-1533013404834-c196f079ca57?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80';
    } else {
      return 'https://images.unsplash.com/photo-1505322022379-7c3353ee6291?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80';
    }
  }
}
