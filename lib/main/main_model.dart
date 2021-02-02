import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String conceptText = 'Mini Makes You Happy';

  void changeconceptText() {
    conceptText = 'How do you feel?';
    notifyListeners();
  }
}
