import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:virtual_private_network/src/bloc/location_cubit/location_cubit.dart';
import 'package:virtual_private_network/src/bloc/location_cubit/location_state.dart';
import 'package:virtual_private_network/src/common_widgets/ip_address_w.dart';
import 'package:virtual_private_network/src/constants/app_colors.dart';
import 'package:virtual_private_network/src/features/choose_location/presentation/choose_location_view.dart';
import 'package:virtual_private_network/src/models/flags.dart';

class ChooseLocationButton extends StatelessWidget {
  const ChooseLocationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<LocationCubit, LocationState>(
      builder: (context, state) {
        int currentLocIndex = context.read<LocationCubit>().locationIndex;
        return GestureDetector(
          onTap: () =>
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (builder) => const ChooseLocationView(),
                ),
              ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 6,
              color: const Color(0xffF5F5F6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Builder(
                builder: (context) {
                  return ListTile(
                    leading: SvgPicture.asset(
                      'assets/flags/${Flags.list[currentLocIndex]['imagePath']}',
                      width: 42,
                      alignment: Alignment.center,
                    ),
                    trailing: SizedBox(
                      width: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.signal_cellular_alt_rounded,
                            color: AppColors.lgTextColor,
                          ),
                          Icon(
                            Icons.navigate_next_outlined,
                            color: Theme.of(context).iconTheme.color,
                          ),
                        ],
                      ),
                    ),
                    title: Text(
                      Flags.list[currentLocIndex]['name'] as String,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                        color: AppColors.lgTextColor,
                      ),
                    ),
                    subtitle: const IpAddressW(),
                  );
                },
              ),
            ),
          ),
        );
      }
    );
  }
}
