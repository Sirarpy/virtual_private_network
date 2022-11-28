import 'package:equatable/equatable.dart';

abstract class LocationState extends Equatable {
  const LocationState();

  @override
  List<Object> get props => [];
}

class LocationLoaded extends LocationState {
  final int locationIndex;
  const LocationLoaded({required this.locationIndex});
  @override
  List<Object> get props => [locationIndex];
}

class LocationError extends LocationState {
  final String message;

  const LocationError({required this.message});

  @override
  List<Object> get props => [message];
}