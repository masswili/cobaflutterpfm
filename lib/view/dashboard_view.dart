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
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                        color: BasePalette.menuBluebird,
                        borderRadius: BorderRadius.circular(5)),
                    height: 200,
                    margin: EdgeInsets.all(8),
                    child: const Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Text('1'),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: BasePalette.menuBluebird,
                        borderRadius: BorderRadius.circular(5)),
                    height: 200,
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const Expanded(
                          flex: 5,
                          child: Text('2'),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('View Details'),
                                  Icon(Icons.arrow_circle_right)
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: BasePalette.menuCar,
                                  onPrimary: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.zero,
                                    bottom: Radius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    decoration: BoxDecoration(
                        color: BasePalette.green,
                        borderRadius: BorderRadius.circular(5)),
                    height: 200,
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const Expanded(
                          flex: 5,
                          child: Text('3'),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('View More'),
                                  Icon(Icons.arrow_circle_right)
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: BasePalette.menuShop,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.zero,
                                    bottom: Radius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                        color: BasePalette.menuBluebird,
                        borderRadius: BorderRadius.circular(5)),
                    height: 200,
                    margin: EdgeInsets.all(8),
                    child: const Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Text('1'),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: BasePalette.menuBluebird,
                        borderRadius: BorderRadius.circular(5)),
                    height: 200,
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const Expanded(
                          flex: 5,
                          child: Text('2'),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('View Details'),
                                  Icon(Icons.arrow_circle_right)
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: BasePalette.menuCar,
                                  onPrimary: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.zero,
                                    bottom: Radius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    decoration: BoxDecoration(
                        color: BasePalette.green,
                        borderRadius: BorderRadius.circular(5)),
                    height: 200,
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const Expanded(
                          flex: 5,
                          child: Text('3'),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('View More'),
                                  Icon(Icons.arrow_circle_right)
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: BasePalette.menuShop,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.zero,
                                    bottom: Radius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                        color: BasePalette.menuBluebird,
                        borderRadius: BorderRadius.circular(5)),
                    height: 200,
                    margin: EdgeInsets.all(8),
                    child: const Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Text('1'),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: BasePalette.menuBluebird,
                        borderRadius: BorderRadius.circular(5)),
                    height: 200,
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const Expanded(
                          flex: 5,
                          child: Text('2'),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('View Details'),
                                  Icon(Icons.arrow_circle_right)
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: BasePalette.menuCar,
                                  onPrimary: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.zero,
                                    bottom: Radius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    decoration: BoxDecoration(
                        color: BasePalette.green,
                        borderRadius: BorderRadius.circular(5)),
                    height: 200,
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const Expanded(
                          flex: 5,
                          child: Text('3'),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('View More'),
                                  Icon(Icons.arrow_circle_right)
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: BasePalette.menuShop,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.zero,
                                    bottom: Radius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                        color: BasePalette.menuBluebird,
                        borderRadius: BorderRadius.circular(5)),
                    height: 200,
                    margin: EdgeInsets.all(8),
                    child: const Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Text('1'),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: BasePalette.menuBluebird,
                        borderRadius: BorderRadius.circular(5)),
                    height: 200,
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const Expanded(
                          flex: 5,
                          child: Text('2'),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('View Details'),
                                  Icon(Icons.arrow_circle_right)
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: BasePalette.menuCar,
                                  onPrimary: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.zero,
                                    bottom: Radius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    decoration: BoxDecoration(
                        color: BasePalette.green,
                        borderRadius: BorderRadius.circular(5)),
                    height: 200,
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const Expanded(
                          flex: 5,
                          child: Text('3'),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('View More'),
                                  Icon(Icons.arrow_circle_right)
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: BasePalette.menuShop,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.zero,
                                    bottom: Radius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
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
    );
  }
}
