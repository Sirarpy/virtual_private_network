import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:virtual_private_network/src/bloc/ip_bloc/ip_state.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;

class IpCubit extends Cubit<IpState> {
  IpCubit() : super(const IpError(message: 'not found yet'));
  String ipAddress = 'calculating...';
  String errorMessage = '';

  Future<void> getPublicIP() async {
    var url = Uri.https(
      'api.ipify.org',
      '/',
      {'q': '{http}'},
    );

    var response = await http.get(url);

    if (response.statusCode == 200) {
      ipAddress = response.body.toString();
      emit(IpFound(ipAddress: ipAddress));
      print('cubit http: $ipAddress.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
      errorMessage = response.statusCode.toString();
      emit(IpError(message: errorMessage));
    }
  }
}
