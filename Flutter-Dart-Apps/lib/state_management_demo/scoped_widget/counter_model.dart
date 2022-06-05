import 'package:flutter_application_1/state_management_demo/scoped_widget/my_counter.dart';
import 'package:scoped_model/scoped_model.dart';

class CounterModel extends Model {
  //properties
  MyCounter mYCounter = MyCounter(0);
  int get counter => mYCounter.counter;
  //Event ? Actions
  void add() {
    mYCounter.increasecount();
    notifyListeners();
  }
}
