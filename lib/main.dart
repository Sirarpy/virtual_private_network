import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:virtual_private_network/src/app.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(
    const MyApp(),
  );
}
