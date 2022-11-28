part of 'current_speed_bloc.dart';

abstract class CurrentSpeedState extends Equatable {
  const CurrentSpeedState();

  @override
  List<Object> get props => [];
}

class ConnectionSpeedState extends CurrentSpeedState {
  final double speedDownload;
  final double speedUpload;

  const ConnectionSpeedState({
    required this.speedDownload,
    required this.speedUpload,
  });

  @override
  List<Object> get props => [
        speedDownload,
        speedUpload,
      ];
}

class CurrentSpeedErrorState extends CurrentSpeedState {
  final String message;

  const CurrentSpeedErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
