import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:virtual_private_network/src/bloc/connection_spped_bloc/current_speed_bloc.dart';
import 'package:virtual_private_network/src/constants/app_sizes.dart';
import 'package:virtual_private_network/src/constants/app_colors.dart';
import 'package:virtual_private_network/src/common_widgets/play_button_w.dart';
import 'package:virtual_private_network/src/common_widgets/custom_scaffold.dart';
import 'package:virtual_private_network/src/common_widgets/connection_speed.dart';
import 'package:virtual_private_network/src/common_widgets/choose_location_button.dart';
import 'package:virtual_private_network/src/utils/connection_speed_animation.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitle: 'VPN Service',
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(
              AppSizes.p8,
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/images/map.svg',
              fit: BoxFit.fill,
              color: AppColors.dkBgColor,
            ),
          ),
          Column(
            children: const [
              ChooseLocationButton(),
              ConnectionSpeed(),
            ],
          ),
          // BlocBuilder<CurrentSpeedBloc, CurrentSpeedState>(
          //   builder: (mContext, state) {
          //     if(state is ConnectionSpeedState) {
          //
          //       double maxValue = state.speedUpload + state.speedUpload*0.4;
          //       double speed = state.speedUpload;
          //       debugPrint('maxValue -- $maxValue speed -- $speed');
          //       if(speed > 0) {
          //         return Container(
          //           width: MediaQuery.of(context).size.width,
          //           height: MediaQuery.of(context).size.height,
          //           color: Colors.blueGrey[900]?.withOpacity(0.75),
          //           child: ConnectionSpeedAnimation(
          //             maxValue: maxValue, speed: speed, checkingType: 'Upload score',
          //           ),
          //         );
          //       }
          //       return const Center(
          //         child: Text(
          //           'loading ...',
          //           style: TextStyle(color: AppColors.dkTextColor,),
          //         ),
          //       );
          //
          //     }
          //
          //     return const CircularProgressIndicator();
          //
          //   }
          // ),
        ],
      ),
      floatingActionButton: const PlayButtonW(),
    );
  }
}


