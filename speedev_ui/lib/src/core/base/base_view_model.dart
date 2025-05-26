import 'package:flutter/material.dart';

abstract class BaseViewModel extends ChangeNotifier {
  void init() {}

  void updateState() => notifyListeners();
}
