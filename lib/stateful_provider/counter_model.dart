import 'package:flutter/foundation.dart';

class CounterModel extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners(); // Notify all listening widgets
  }

  void decrement() {
    count--;
    notifyListeners();
  }
}
