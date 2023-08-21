import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../constants.dart';

class ChartBox extends StatefulWidget {
  const ChartBox({super.key});

  @override
  State<ChartBox> createState() => _ChartBoxState();
}

class _ChartBoxState extends State<ChartBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Container(
        decoration: BoxDecoration(
          color: BasePalette.menuBluebird,
          borderRadius: BorderRadius.circular(5),
        ),
        height: 225,
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Center(
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: SfRadialGauge(
                              axes: <RadialAxis>[
                                RadialAxis(
                                  minimum: 0,
                                  maximum: 100,
                                  showLabels: false,
                                  showTicks: false,
                                  ranges: <GaugeRange>[
                                    GaugeRange(
                                      startValue: 0,
                                      endValue: 33,
                                      color: Colors.red,
                                    ),
                                    GaugeRange(
                                      startValue: 33,
                                      endValue: 66,
                                      color: Colors.orange,
                                    ),
                                    GaugeRange(
                                      startValue: 66,
                                      endValue: 100,
                                      color: Colors.green,
                                    ),
                                  ],
                                  pointers: <GaugePointer>[
                                    NeedlePointer(value: 75),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: SfRadialGauge(
                              axes: <RadialAxis>[
                                RadialAxis(
                                  minimum: 0,
                                  maximum: 100,
                                  showLabels: false,
                                  showTicks: false,
                                  ranges: <GaugeRange>[
                                    GaugeRange(
                                      startValue: 0,
                                      endValue: 33,
                                      color: Colors.red,
                                    ),
                                    GaugeRange(
                                      startValue: 33,
                                      endValue: 66,
                                      color: Colors.orange,
                                    ),
                                    GaugeRange(
                                      startValue: 66,
                                      endValue: 100,
                                      color: Colors.green,
                                    ),
                                  ],
                                  pointers: <GaugePointer>[
                                    NeedlePointer(value: 45),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
