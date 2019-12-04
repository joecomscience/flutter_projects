import 'package:flutter/cupertino.dart';

class AppState {
  int counter;

  AppState(@required this.counter);
  AppState.fromAppState(AppState sts) {
    counter = sts.counter;
  }
}