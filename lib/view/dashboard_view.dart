import 'package:cobaflutterpfm/constants.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Column(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: Text('1'),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Details'),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0))),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Text('2'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Text('3'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Text('4'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Text('1'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Text('2'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Text('3'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Text('4'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Text('1'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Text('2'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Text('3'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Text('4'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Text('1'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Text('2'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Text('3'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: BasePalette.primary,
                    child: Text('4'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
