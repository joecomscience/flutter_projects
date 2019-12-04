import 'package:counter_app_with_redux/model/app_state.dart';
import 'package:redux/redux.dart';

enum AppAction { Increment, Decrement }

final counterReducer = combineReducers<AppState>([
  TypedReducer<AppState, AppAction>(setCounter),
]);

AppState setCounter(AppState state, AppAction action) {
  switch (action) {
    case AppAction.Increment:
      state.counter++;
      break;
    case AppAction.Decrement:
      if (state.counter > 0) {
        state.counter--;
      }
      break;
  }
  return state;
}