import 'package:equatable/equatable.dart';

abstract class PlayState extends Equatable {
  @override
  List<Object> get props => [];
}

class PlayStartState extends PlayState {
  final Duration duration;
  final bool isCountDownStart;

  PlayStartState({
    required this.duration,
    required this.isCountDownStart,
  });

  @override
  List<Object> get props => [
        duration,
        isCountDownStart,
      ];
}
