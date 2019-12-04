import 'package:counter_app_with_redux/model/app_state.dart';

class AppModel {
  AppState state;
  Function() onIncrease;
  Function() onDecrease;

  AppModel({
    this.state,
    this.onIncrease,
    this.onDecrease
  });
}