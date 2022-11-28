import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:virtual_private_network/src/bloc/connection_spped_bloc/current_speed_bloc.dart';
import 'package:virtual_private_network/src/bloc/play_cubit/play_cubit.dart';
import 'package:virtual_private_network/src/bloc/play_cubit/play_state.dart';
import 'package:virtual_private_network/src/constants/app_colors.dart';

class PlayButtonW extends StatelessWidget {
  const PlayButtonW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayCubit, PlayState>(
      builder: (mContext,state) {
        bool isCountDownStart = mContext.read<PlayCubit>().isCountDownStart;
        Duration duration = mContext.read<PlayCubit>().duration;

        return GestureDetector(
          onTap: () {

            context
                .read<PlayCubit>().countDownSwitch;
            context
                .read<PlayCubit>().play();

            context
                .read<CurrentSpeedBloc>()
                .add(GetCurrentConnectionSpeedEvent(),
            );
          },
          child: Card(
            elevation: 6,
            color: const Color(0xffF5F5F6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            child: SizedBox.square(
              dimension: 75 * 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    isCountDownStart
                        ? 'assets/images/stop.svg'
                        : 'assets/images/powOn.svg',
                    width: isCountDownStart ? 50 : 35,
                    color: isCountDownStart
                        ? AppColors.dkStopButtonColor
                        :  AppColors.dkPlayButtonColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      isCountDownStart
                          ? '${duration.inHours} : ${duration.inMinutes % 60} : '
                          '${duration.inSeconds % 60}'
                          : 'Start',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.lgTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
