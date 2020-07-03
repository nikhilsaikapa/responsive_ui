import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  String title = 'Default';
  int counter = 0;
  void initialise(){
    title = 'Initialised';
    notifyListeners();
  }

  void updateTitle(){
    counter++;
    title = 'Updated $counter';
    notifyListeners();
  }
}