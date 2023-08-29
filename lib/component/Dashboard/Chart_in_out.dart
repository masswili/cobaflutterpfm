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
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          color: BasePalette.menuBluebird,
          borderRadius: BorderRadius.circular(5),
        ),
        height: 250,
        margin: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Pemasukan dan Pengeluaran',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 5,
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Pemasukan',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 90,
                                  height: 90,
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
                                        pointers: const <GaugePointer>[
                                          NeedlePointer(value: 80),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Column(
                                  children: [
                                    Text(
                                      "100%",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_circle_up,
                                          color:
                                              Color.fromARGB(255, 16, 128, 20),
                                        ),
                                        Text(
                                          "Rp. 1.000.000.000",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 16, 128, 20),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Pengeluaran',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 90,
                                  height: 90,
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
                                        pointers: const <GaugePointer>[
                                          NeedlePointer(value: 45),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Column(
                                  children: [
                                    Text(
                                      "100%",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_circle_down,
                                          color: Colors.red,
                                        ),
                                        Text(
                                          "Rp. 1.000.000.000",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Positioned(
                      bottom: 17,
                      child: Text(
                        "Sisa Keuangan : 12345678",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
