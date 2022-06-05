import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

enum Action {
  Increment,
  decrement,
}

int counterReducer(int state, dynamic action) {
  if (action == Action.Increment)
    return state + 1;
  else if (action == Action.decrement) return state - 1;

  return state;
}

class FlutterReduxApp extends StatelessWidget {
  final Store<int> store;
  const FlutterReduxApp({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<int>(
      store: store,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('State Management using Redux'),
          ),
          body: Container(
            color: Colors.amberAccent.shade100,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                      height: 30,
                      child: Text(
                        'You have Clicked button',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 30.0,
                    child: StoreConnector<int, String>(
                        builder: (context, counter) {
                          return Text(counter,
                              style: const TextStyle(
                                  fontSize: 30.0, color: Colors.red));
                        },
                        converter: (store) => store.state.toString()),
                  ),
                  const SizedBox(
                      height: 30.0,
                      child: Text('Times',
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold))),
                ],
              ),
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              StoreConnector<int, VoidCallback>(
                builder: (context, callback) {
                  return FloatingActionButton(
                    onPressed: callback,
                    child: const Icon(Icons.add),
                  );
                },
                converter: (store) {
                  return () => store.dispatch(Action.Increment);
                },
              ),
              const SizedBox(
                width: 30,
              ),
              StoreConnector<int, VoidCallback>(
                builder: (context, callback) {
                  return FloatingActionButton(
                    onPressed: callback,
                    child: const Icon(Icons.remove),
                  );
                },
                converter: (store) {
                  return () => store.dispatch(Action.decrement);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
