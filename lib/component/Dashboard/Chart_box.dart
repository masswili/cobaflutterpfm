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
        margin: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.library_books,
                            size: 24,
                            color: Color(0xFFFFFFFF),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Networth 2023 on 31 Agustus 2023',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
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
                          child: Column(
                            children: [
                              Expanded(
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
                              const Expanded(
                                child: Text(
                                  'I Have',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Expanded(
                          child: SizedBox(
                            height: 100,
                            child: Column(
                              children: [
                                Text(
                                  "Net Worth: Rp. 100,000",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Cash: Rp. 200,000",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Debt: Rp. 800,000",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Column(
                            children: [
                              Expanded(
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
                              const Expanded(
                                child: Text(
                                  "I Owe",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
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
