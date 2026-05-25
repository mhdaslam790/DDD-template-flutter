import 'package:fluttertoast/fluttertoast.dart';

class Snackbar {
  static void showInfo(String message) {
    Fluttertoast.showToast(msg: message);
  }

  static void showSuccess(String message) {
    Fluttertoast.showToast(msg: message);
  }

  static void showError(String message) {
    Fluttertoast.showToast(msg: message);
  }
}
