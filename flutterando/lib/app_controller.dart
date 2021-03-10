import 'package:flutter/cupertino.dart';

class AppControler extends ChangeNotifier {
  //como se fosse umset state para quem usa um código de programação

  static AppControler instance = AppControler();
  bool isDarkTheme = false;

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
