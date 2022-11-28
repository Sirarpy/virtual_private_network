import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:virtual_private_network/src/bloc/location_cubit/location_cubit.dart';
import 'package:virtual_private_network/src/common_widgets/custom_scaffold.dart';
import 'package:virtual_private_network/src/models/flags.dart';

class ChooseLocationView extends StatelessWidget {
  const ChooseLocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: Flags.list.length,
        itemBuilder: (builder, index) => ListTile(
          onTap: () {
            context.read<LocationCubit>().setLocationIndex(index);
            Navigator.of(context).pop();
             // getPublicIP();
          },
          leading: SvgPicture.asset(
            'assets/flags/${Flags.list[index]['imagePath']}',
            width: 42,
          ),
          title: Text(
            Flags.list[index]['name'] as String,
            style: Theme.of(context).primaryTextTheme.subtitle1,
          ),
          trailing: Icon(
            Icons.navigate_next_rounded,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ),
    );
  }
}
