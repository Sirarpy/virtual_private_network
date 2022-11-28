import 'package:equatable/equatable.dart';

abstract class IpState extends Equatable {
  const IpState();

  @override
  List<Object> get props => [];
}

class IpFound extends IpState {
  final String ipAddress;

  const IpFound({required this.ipAddress});

  @override
  List<Object> get props => [ipAddress];
}

class IpError extends IpState {
  final String message;

  const IpError({required this.message});

  @override
  List<Object> get props => [message];
}