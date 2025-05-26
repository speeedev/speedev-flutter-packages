import 'package:flutter/material.dart';

abstract class BaseViewModel extends ChangeNotifier {
  void init();

  @override
  void dispose();

  void updateState() => notifyListeners();
}
