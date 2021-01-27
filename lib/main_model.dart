import 'package:flutter/material.dart';

class Mainmodel extends ChangeNotifier {
  String conceptText = 'Mini Makes You Happy';

  void changeconceptText() {
    conceptText = 'How do you feel?';
    notifyListeners();
  }
}
