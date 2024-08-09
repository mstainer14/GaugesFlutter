import 'package:flutter/material.dart';
import 'package:geekyants_flutter_gauges/geekyants_flutter_gauges.dart';

class MyVerticalGauge extends StatefulWidget {
  const MyVerticalGauge({super.key});

  @override
  State<MyVerticalGauge> createState() => _MyVerticalGaugeState();
}

class _MyVerticalGaugeState extends State<MyVerticalGauge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: LinearGauge(
                  enableGaugeAnimation: true,
                  gaugeOrientation: GaugeOrientation.horizontal,
                  pointers: [
                    Pointer(
                      labelFormatter: (double? value) {
                        return '$value%';
                      },
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      height: 10,
                      width: 2,
                      value: 30,
                      color: Colors.black,
                      shape: PointerShape.rectangle,
                      shapePadding: const EdgeInsets.symmetric(vertical: 8),
                      pointerPosition: PointerPosition.top,
                    ),
                    Pointer(
                      labelFormatter: (double? value) {
                        return '$value%';
                      },
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      height: 10,
                      width: 2,
                      value: 30,
                      color: Colors.black,
                      shape: PointerShape.rectangle,
                      shapePadding: const EdgeInsets.symmetric(vertical: 8),
                      pointerPosition: PointerPosition.bottom,
                    ),
                  ],
                  rangeLinearGauge: [
                    RangeLinearGauge(
                      start: 80,
                      end: 100,
                      color: Colors.green,
                    ),
                    RangeLinearGauge(
                      start: 60,
                      end: 80,
                      color: Colors.lightGreen,
                    ),
                    RangeLinearGauge(
                      start: 40,
                      end: 60,
                      color: Colors.yellow,
                    ),
                    RangeLinearGauge(
                      start: 20,
                      end: 40,
                      color: Colors.orangeAccent,
                    ),
                    RangeLinearGauge(
                      start: 0,
                      end: 20,
                      color: Colors.red,
                    ),
                  ],
                  linearGaugeBoxDecoration: const LinearGaugeBoxDecoration(
                    thickness: 6,
                  ),
                  rulers: RulerStyle(
                    showLabel: false,
                    showPrimaryRulers: false,
                    rulerPosition: RulerPosition.bottom,
                    showSecondaryRulers: false,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: LinearGauge(
                  enableGaugeAnimation: true,
                  gaugeOrientation: GaugeOrientation.vertical,
                  pointers: [
                    Pointer(
                      labelFormatter: (double? value) {
                        return 'F1($value)%';
                      },
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      height: 2,
                      width: 10,
                      value: 30,
                      color: Colors.black,
                      shape: PointerShape.rectangle,
                      shapePadding: const EdgeInsets.only(left: 8, right: 8),
                      pointerPosition: PointerPosition.right,
                    ),
                    Pointer(
                      labelFormatter: (double? value) {
                        return 'F2($value)%';
                      },
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      height: 2,
                      width: 10,
                      value: 30,
                      color: Colors.black,
                      shape: PointerShape.rectangle,
                      shapePadding: const EdgeInsets.only(left: 8, right: 8),
                      pointerPosition: PointerPosition.left,
                    ),
                  ],
                  rangeLinearGauge: [
                    RangeLinearGauge(
                      start: 80,
                      end: 100,
                      color: Colors.green,
                    ),
                    RangeLinearGauge(
                      start: 60,
                      end: 80,
                      color: Colors.lightGreen,
                    ),
                    RangeLinearGauge(
                      start: 40,
                      end: 60,
                      color: Colors.yellow,
                    ),
                    RangeLinearGauge(
                      start: 20,
                      end: 40,
                      color: Colors.orangeAccent,
                    ),
                    RangeLinearGauge(
                      start: 0,
                      end: 20,
                      color: Colors.red,
                    ),
                  ],
                  linearGaugeBoxDecoration: const LinearGaugeBoxDecoration(
                    thickness: 6,
                  ),
                  rulers: RulerStyle(
                    showLabel: false,
                    showPrimaryRulers: false,
                    rulerPosition: RulerPosition.left,
                    showSecondaryRulers: false,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
