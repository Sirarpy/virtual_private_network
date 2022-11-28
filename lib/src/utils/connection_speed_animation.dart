import 'dart:async';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:virtual_private_network/src/constants/app_colors.dart';

class ConnectionSpeedAnimation extends StatefulWidget {
  const ConnectionSpeedAnimation({
    Key? key,
    required this.maxValue,
    required this.speed,
    required this.checkingType,
  }) : super(key: key);

  final double maxValue;
  final double speed;
  final String checkingType;

  @override
  State<ConnectionSpeedAnimation> createState() =>
      _ConnectionSpeedAnimationState();
}

class _ConnectionSpeedAnimationState extends State<ConnectionSpeedAnimation> {
  Timer? _timer;
  final double _value = 300;

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          startAngle: 270,
          endAngle: 270,
          minimum: 0,
          maximum: 80,
          interval: 10,
          radiusFactor: 0.4,
          showAxisLine: false,
          showLastLabel: false,
          minorTicksPerInterval: 4,
          majorTickStyle: const MajorTickStyle(
            length: 8,
            thickness: 3,
            color: AppColors.lgMajorTickColor,
          ),
          minorTickStyle: const MinorTickStyle(
            length: 3,
            thickness: 1.5,
            color: AppColors.lgMinorTickColor,
          ),
          axisLabelStyle: const GaugeTextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          onLabelCreated: labelCreated,
        ),
        RadialAxis(
          minimum: 0,
          maximum: widget.maxValue,
          labelOffset: 30,
          axisLineStyle: const AxisLineStyle(
            thicknessUnit: GaugeSizeUnit.factor,
            thickness: 0.03,
          ),
          majorTickStyle: MajorTickStyle(
            length: 6,
            thickness: 4,
            color: Colors.pink[200],
          ),
          minorTickStyle: const MinorTickStyle(
            length: 3,
            thickness: 3,
            color: Colors.pinkAccent,
          ),
          axisLabelStyle: GaugeTextStyle(
            color: Colors.red[900],
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          ranges: <GaugeRange>[
            GaugeRange(
              startValue: 0,
              endValue: 300,
              sizeUnit: GaugeSizeUnit.factor,
              startWidth: 0.03,
              endWidth: 0.03,
              gradient: const SweepGradient(
                colors: <Color>[
                  Colors.red,
                  Colors.yellow,
                  Colors.blue,
                ],
                stops: <double>[0.1, 0.6, 1],
              ),
            ),
          ],
          pointers: <GaugePointer>[
            NeedlePointer(
              value: _value,
              needleLength: 0.95,
              enableAnimation: true,
              animationType: AnimationType.ease,
              needleStartWidth: 1.5,
              needleEndWidth: 6,
              needleColor: Colors.red,
              knobStyle: const KnobStyle(
                knobRadius: 0.09,
                sizeUnit: GaugeSizeUnit.factor,
              ),
            ),
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
              widget: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.checkingType,
                      style: const TextStyle(
                        fontSize: 25,
                        color: AppColors.dkTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Mbps',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              angle: 90,
              positionFactor: 0.75,
            ),
          ],
        )
      ],
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void labelCreated(AxisLabelCreatedArgs args) {
    if (args.text == '0') {
      args.text = 'N';
      args.labelStyle = const GaugeTextStyle(
          color: Colors.red, fontWeight: FontWeight.bold, fontSize: 14);
    } else if (args.text == '10') {
      args.text = '';
    } else if (args.text == '20') {
      args.text = 'E';
    } else if (args.text == '30') {
      args.text = '';
    } else if (args.text == '40') {
      args.text = 'S';
    } else if (args.text == '50') {
      args.text = '';
    } else if (args.text == '60') {
      args.text = 'W';
    } else if (args.text == '70') {
      args.text = '';
    }
  }
}
