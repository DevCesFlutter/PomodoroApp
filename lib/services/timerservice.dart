import 'dart:async';

import 'package:flutter/material.dart';

class TimerService extends ChangeNotifier {
  Timer? timer;
  double currentDuration = 1500;
  double selectedTime = 1500;
  bool timerPlaying = false;
  int rounds = 0;
  int gool = 0;
  String currentState = "FOCUS";

  void selectTime(double seconds) {
    selectedTime = seconds;
    currentDuration = seconds;
    notifyListeners();
  }

  void start() {
    timerPlaying = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (currentDuration == 0) {
        handleNextRound();
      } else {
        currentDuration--;
        notifyListeners();
      }
    });
  }

  void pause() {
    timer?.cancel();
    timerPlaying = false;
    notifyListeners();
  }

  void handleNextRound() {
    if (currentState == "FOCUS" && rounds != 3) {
      currentState = "BREAK";
      currentDuration = 300;
      selectedTime = 300;
      rounds++;
      gool++;
    } else if (currentState == "BREAK") {
      currentState = "FOCUS";
      currentDuration = 1500;
      selectedTime = 1500;
    } else if (currentState == "FOCUS" && rounds == 3) {
      currentState = "LONGBREAK";
      currentDuration = 1500;
      selectedTime = 1500;
      rounds++;
      gool++;
    } else if (currentState == "LONGBREAK") {
      currentState = "FOCUS";
      rounds = 0;
    }
    notifyListeners();
  }

  void reset() {
    timer?.cancel();
    currentState = "FOCUS";
    currentDuration = selectedTime = 1500;
    rounds = gool = 0;
    timerPlaying = false;
    notifyListeners();
  }
}
