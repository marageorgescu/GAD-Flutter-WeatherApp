import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import '../models/index.dart';

class WeatherListContainer extends StatelessWidget {
  const WeatherListContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<String>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<String>>(
      converter: (Store<AppState> store) {
        return store.state.weatherList;
      },
      builder: builder,
    );
  }
}
