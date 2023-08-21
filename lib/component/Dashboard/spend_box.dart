import 'package:flutter/material.dart';

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
            borderRadius: BorderRadius.circular(5)),
        height: 225,
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'My Spends Last 30 Days',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 5,
              child: Center(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Text(
                            'Rp. 20.000.000',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Center(
                          child: Text(
                            'Top Spender',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Uncategorized',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Text(
                            'Rp. 20.000.000',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
    );
  }
}
