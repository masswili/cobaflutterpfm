import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class UpcomingPaymentBox extends StatefulWidget {
  const UpcomingPaymentBox({super.key});

  @override
  State<UpcomingPaymentBox> createState() => _UpcomingPaymentBoxState();
}

class _UpcomingPaymentBoxState extends State<UpcomingPaymentBox> {
  Map<String, double> dataMap = {
    "Food Items": 18.47,
    "Clothes": 17.70,
    "Technology": 4.25,
    "Cosmetics": 3.51,
    "Other": 2.83,
  };

  List<Color> colorList = [
    const Color(0xffD95AF3),
    const Color(0xff3EE094),
    const Color(0xff3398F6),
    const Color(0xffFA4A42),
    const Color(0xffFE9539)
  ];

  final gradientList = <List<Color>>[
    [
      const Color.fromRGBO(223, 250, 92, 1),
      const Color.fromRGBO(129, 250, 112, 1),
    ],
    [
      const Color.fromRGBO(129, 182, 205, 1),
      const Color.fromRGBO(91, 253, 199, 1),
    ],
    [
      const Color.fromRGBO(175, 63, 62, 1.0),
      const Color.fromRGBO(254, 154, 92, 1),
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        height: 250,
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Akun Finansial',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
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
                                child: PieChart(
                                  dataMap: dataMap,
                                  colorList: colorList,
                                  chartRadius:
                                      MediaQuery.of(context).size.width / 10,
                                  centerText: "Dummy",
                                  ringStrokeWidth: 24,
                                  animationDuration: const Duration(seconds: 3),
                                  chartValuesOptions: const ChartValuesOptions(
                                      showChartValues: true,
                                      showChartValuesOutside: true,
                                      showChartValuesInPercentage: true,
                                      showChartValueBackground: false),
                                  legendOptions: const LegendOptions(
                                    showLegends: true,
                                    legendShape: BoxShape.rectangle,
                                    legendTextStyle: TextStyle(fontSize: 10),
                                    legendPosition: LegendPosition.right,
                                  ),
                                  gradientList: gradientList,
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
