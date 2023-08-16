//import 'package:breacnet/static%20image/static.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
//import 'package:url_launcher/url_launcher.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/header.png",
                        height: 100.0,
                        // width: 00.0,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            // onTap: () {
                            //   //print("Container clicked");
                            //   Navigator.pushNamed(context, '/appointment');
                            // },
                            child: PieChart(
                              dataMap: dataMap,
                              colorList: colorList,
                              chartRadius:
                                  MediaQuery.of(context).size.width / 10,
                              centerText: "Budget",
                              ringStrokeWidth: 24,
                              animationDuration: const Duration(seconds: 2),
                              chartValuesOptions: const ChartValuesOptions(
                                  showChartValues: true,
                                  showChartValuesOutside: true,
                                  showChartValuesInPercentage: true,
                                  showChartValueBackground: false),
                              legendOptions: const LegendOptions(
                                  showLegends: true,
                                  legendShape: BoxShape.rectangle,
                                  legendTextStyle: TextStyle(fontSize: 15),
                                  legendPosition: LegendPosition.bottom,
                                  showLegendsInRow: true),
                              gradientList: gradientList,
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          GestureDetector(
                              // onTap: () {
                              //   messageAdmin();
                              // },
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/consultation.png",
                                  width: 100),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('consultation')
                            ],
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              //print("Container clicked");
                              Navigator.pushNamed(context, '/history');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/history.png",
                                  width: 100,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('history')
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          GestureDetector(
                              onTap: () {
                                //print("Container clicked");
                                //Navigator.pushNamed(context, '/staticimage');
                                Navigator.pushNamed(context, '/scan');
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/scan.png",
                                      width: 100),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text('scan')
                                ],
                              ))
                        ],
                      ),
                      // ButtonTheme(
                      //   minWidth: 170,
                      //   child: RaisedButton(
                      //     child: Text("Detect in Image"),
                      //     onPressed: () {
                      //       // Navigator.push(context, MaterialPageRoute(
                      //       //   builder: (context) => StaticImage(),
                      //       // ),
                      //       // );
                      //       Navigator.pushReplacementNamed(context, '/staticimage');
                      //     },
                      //   ),
                      // ),

                      // ButtonTheme(
                      //   minWidth: 160,
                      //   child: RaisedButton(
                      //     child: Text("Real Time Detection"),
                      //     onPressed:() {
                      //       Navigator.push(context, MaterialPageRoute(
                      //         builder: (context) => LiveFeed(cameras),
                      //       ),
                      //       );
                      //     },
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // messageAdmin() async {
  //   print("Pesan WA");
  //   String number = "6282138074117";
  //   await launch("https://wa.me/${number}?text=Hello..");
  // }

  aboutDialog() {
    showAboutDialog(
      context: context,
      applicationName: "Breacnet",
      applicationLegalese: "By test",
      applicationVersion: "1.0",
      children: <Widget>[
        const Text("www.breacnet.com"),
      ],
    );
  }
}
