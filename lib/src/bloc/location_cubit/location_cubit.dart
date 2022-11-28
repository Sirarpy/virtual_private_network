import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:virtual_private_network/src/bloc/location_cubit/location_state.dart';
import 'package:bloc/bloc.dart';

class LocationCubit extends Cubit<LocationState> {

  LocationCubit() : super(const LocationLoaded(locationIndex: 0));

  int locationIndex = 0;

  void setLocationIndex(int index) {
    locationIndex = index;
    emit(LocationLoaded(locationIndex: locationIndex));
  }
}