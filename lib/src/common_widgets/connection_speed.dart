import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:virtual_private_network/src/bloc/connection_spped_bloc/current_speed_bloc.dart';

class ConnectionSpeed extends StatelessWidget {
  const ConnectionSpeed({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentSpeedBloc,CurrentSpeedState>(
      builder: (context, state) {
        if (state is ConnectionSpeedState) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                netSpeed(
                  Icons.south_rounded,
                  Theme.of(context).primaryColor,
                  state.speedDownload.toStringAsFixed(2),
                ),
                 netSpeed(
                    Icons.north_rounded,
                    Theme.of(context).primaryColor,
                    state.speedUpload.toStringAsFixed(2),
                  ),
              ],
            ),
          );
        }
        else if(state is CurrentSpeedErrorState) {
          return Center(
            child: Text('Sorry some $state'),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    );
  }

  Widget netSpeed(IconData icon, Color color, String text) => Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          Builder(
            builder: (context) {
              return RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  text: text,
                  children: const [
                    TextSpan(
                      text: 'KB/S',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      );
}
