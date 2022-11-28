import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:virtual_private_network/src/bloc/connection_spped_bloc/current_speed_bloc.dart';
import 'package:virtual_private_network/src/bloc/ip_bloc/ip_cubit.dart';
import 'package:virtual_private_network/src/bloc/location_cubit/location_cubit.dart';
import 'package:virtual_private_network/src/bloc/play_cubit/play_cubit.dart';
import 'package:virtual_private_network/src/features/choose_location/presentation/choose_location_view.dart';
import 'package:virtual_private_network/src/features/vpn/presentation/main_view.dart';
import 'package:virtual_private_network/src/routing/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider (
          create: (BuildContext context) => LocationCubit(),
        ),
        BlocProvider (
          create: (BuildContext context) => IpCubit()..getPublicIP(),
        ),
        BlocProvider (
          create: (BuildContext context) => CurrentSpeedBloc(),
        ),
        BlocProvider (
          create: (BuildContext context) => PlayCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          AppRoutes.initialRout: (context) => const MainView(),
          AppRoutes.chooseLocationRout: (context) => const ChooseLocationView(),
        },
        initialRoute: AppRoutes.initialRout,
      ),
    );
  }
}
