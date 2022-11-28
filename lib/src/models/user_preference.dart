// import 'dart:async';
// import 'package:flutter/cupertino.dart';
//
// class UserPreference extends ChangeNotifier {
//
//   int locationIndex = 0;
//
//   void setlocationIndex(int index) {
//     locationIndex = index;
//     notifyListeners();
//   }
//
//   Duration duration = Duration.zero;
//   bool isCountDownStart = false;
//   final Stream _stream = Stream.periodic(const Duration(seconds: 1));
//
//   UserPreference() {
//     _stream.listen((event) {
//       if (isCountDownStart) {
//         duration += const Duration(seconds: 1);
//         notifyListeners();
//       }
//     });
//   }
//
//   void get countDownSwitch {
//     isCountDownStart = !isCountDownStart;
//     notifyListeners();
//   }
// }
