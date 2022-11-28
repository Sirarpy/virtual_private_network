import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:virtual_private_network/src/bloc/ip_bloc/ip_cubit.dart';
import 'package:virtual_private_network/src/bloc/ip_bloc/ip_state.dart';
import 'package:virtual_private_network/src/constants/app_colors.dart';

class IpAddressW extends StatelessWidget {
  const IpAddressW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IpCubit, IpState>(
      builder: (context, state) {
        String ip = context.read<IpCubit>().ipAddress;
        return Text(
          ip,
          style: const TextStyle(
            color: AppColors.lgTextColor,
          ),
        );
      }
    );
  }
}
