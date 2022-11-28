part of 'current_speed_bloc.dart';

abstract class CurrentSpeedEvent {}

class GetCurrentConnectionSpeedEvent  extends CurrentSpeedEvent {}

class CurrentSpeedErrorEvent extends CurrentSpeedEvent {}
