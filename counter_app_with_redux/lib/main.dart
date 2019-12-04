import 'package:counter_app_with_redux/model/app_model.dart';
import 'package:counter_app_with_redux/model/app_state.dart';
import 'package:counter_app_with_redux/redux/reducers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  final _initialState = AppState(0);
  final Store<AppState> _store = Store<AppState>(
      counterReducer, initialState: _initialState);
  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Counter App',
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {

  buildIncreaseBtn() {
    return Container(
      child: StoreConnector<AppState, AppModel>(
        converter: (store) {
          return AppModel(
            state: store.state,
            onIncrease: () => store.dispatch(AppAction.Increment),
          );
        },
        builder: (context, model) {
          return FloatingActionButton(
            onPressed: model.onIncrease,
            child: Icon(Icons.add),
          );
        },
      ),
    );
  }

  buildDecreaseBtn() {
    return Container(
      child: StoreConnector<AppState, AppModel>(
        converter: (store) {
          return AppModel(
              state: store.state,
              onDecrease: () => store.dispatch(AppAction.Decrement)
          );
        },
        builder: (context, model) {
          return FloatingActionButton(
            onPressed: model.onDecrease,
            child: Icon(Icons.remove),
          );
        },
      ),
    );
  }

  getCounter() {
    return StoreConnector<AppState, AppModel>(
      converter: (store) => AppModel(state: store.state),
      builder: (context, model) {
        return Text(model.state.counter.toString());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getCounter(),
            Align(
              alignment: Alignment.bottomRight, child: buildIncreaseBtn(),),
            Align(
              alignment: Alignment.bottomRight, child: buildDecreaseBtn(),)
          ],
        ),
      ),
    );
  }
}
