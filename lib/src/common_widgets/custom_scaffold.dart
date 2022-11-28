import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:virtual_private_network/src/constants/app_colors.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    required this.body,
    this.appBarTitle,
    this.floatingActionButton,
    Key? key,
  }) : super(key: key);

  final String? appBarTitle;
  final Widget body;
  final Widget? floatingActionButton;


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: AppColors.lgBgColor,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.lgBgColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(appBarTitle ?? 'VPN Service'),
          ),
          body: body,
          floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
          floatingActionButton: floatingActionButton,
        ),
    );
  }
}
