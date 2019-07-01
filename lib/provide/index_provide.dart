import 'package:flutter/material.dart';

class IndexProvide with ChangeNotifier {
  int value =0 ;

  increment(){
    value++;
    notifyListeners();
  }
}
