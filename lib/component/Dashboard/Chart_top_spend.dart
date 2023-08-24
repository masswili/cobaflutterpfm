import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../constants.dart';

class SpendBox extends StatefulWidget {
  const SpendBox({super.key});

  @override
  State<SpendBox> createState() => _SpendBoxState();
}

class _SpendBoxState extends State<SpendBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
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
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Top Spend',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Center(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BarChart(
                        BarChartData(
                          gridData: FlGridData(
                            show: false,
                            drawHorizontalLine: false,
                            drawVerticalLine: false,
                            verticalInterval: 1.0,
                            horizontalInterval: 1.0,
                          ),
                          titlesData: FlTitlesData(
                            show: true,
                            leftTitles: SideTitles(showTitles: true),
                            bottomTitles: SideTitles(
                              showTitles: true,
                              getTitles: (double value) {
                                switch (value.toInt()) {
                                  case 0:
                                    return 'Bar 1';
                                  case 1:
                                    return 'Bar 2';
                                  case 2:
                                    return 'Bar 3';
                                  case 3:
                                    return 'Bar 4';
                                  case 4:
                                    return 'Bar 5';
                                  default:
                                    return '';
                                }
                              },
                            ),
                          ),
                          borderData: FlBorderData(
                            show: true,
                            border: Border.all(
                              color: const Color(0xff37434d),
                              width: 2,
                            ),
                          ),
                          barGroups: [
                            BarChartGroupData(
                              x: 0,
                              barRods: [
                                BarChartRodData(
                                  y: 3,
                                  width: 20,
                                  colors: [Colors.blue],
                                )
                              ],
                              showingTooltipIndicators: [0],
                            ),
                            BarChartGroupData(
                              x: 1,
                              barRods: [
                                BarChartRodData(
                                  y: 1,
                                  width: 20,
                                  colors: [Colors.green],
                                )
                              ],
                              showingTooltipIndicators: [0],
                            ),
                            BarChartGroupData(
                              x: 2,
                              barRods: [
                                BarChartRodData(
                                  y: 4,
                                  width: 20,
                                  colors: [Colors.orange],
                                )
                              ],
                              showingTooltipIndicators: [0],
                            ),
                            BarChartGroupData(
                              x: 3,
                              barRods: [
                                BarChartRodData(
                                  y: 2,
                                  width: 20,
                                  colors: [Colors.red],
                                )
                              ],
                              showingTooltipIndicators: [0],
                            ),
                            BarChartGroupData(
                              x: 4,
                              barRods: [
                                BarChartRodData(
                                  y: 3,
                                  width: 20,
                                  colors: [Colors.purple],
                                )
                              ],
                              showingTooltipIndicators: [0],
                            ),
                          ],
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
