import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:virtual_private_network/src/bloc/play_cubit/play_state.dart';

class PlayCubit extends Cubit<PlayState> {
  PlayCubit()
      : super(
          PlayStartState(
            duration: const Duration(
              hours: 0,
            ),
            isCountDownStart: false,
          ),
        );

  Duration duration = Duration.zero;
  bool isCountDownStart = false;

  String downloadSpeed = '';
  String uploadSpeed = '';

  play() {
    if (isCountDownStart) {
      countDown();
    } else {
      stopCountDown();
    }
  }

  Timer countDown([int seconds = 1]) =>
      Timer.periodic(Duration(seconds: seconds), (_) => startCountDown());

  startCountDown() {
    duration += const Duration(seconds: 1);
    emit(
      PlayStartState(
        duration: duration,
        isCountDownStart: true,
      ),
    );
  }

  stopCountDown() {
    duration = const Duration(seconds: 0);
    emit(
      PlayStartState(
        duration: duration,
        isCountDownStart: false,
      ),
    );
  }

  void get countDownSwitch {
    isCountDownStart = !isCountDownStart;
  }
}
