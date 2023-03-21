import 'package:flutter/material.dart';
import 'package:geekyants_flutter_gauges/gauges.dart';

class FillExtendExample extends StatefulWidget {
  const FillExtendExample({super.key});

  @override
  State<FillExtendExample> createState() => _FillExtendExampleState();
}

class _FillExtendExampleState extends State<FillExtendExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LinearGauge(
          // extendLinearGauge: 20,
          // fillExtend: false,
          // steps: 10,
          // enableAnimation: true,
          gaugeOrientation: GaugeOrientation.vertical,
          valueBar: [ValueBar(value: 100)],
          rulers: const RulerStyle(
            inverseRulers: false,
            rulerPosition: RulerPosition.left,
          ),
        ),
      ),
    );
  }
}
