import 'package:flutter/material.dart';

import '../../constants.dart';

class ActivityBox extends StatefulWidget {
  const ActivityBox({super.key});

  @override
  State<ActivityBox> createState() => _ActivityBoxState();
}

class _ActivityBoxState extends State<ActivityBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        decoration: BoxDecoration(
            color: BasePalette.green, borderRadius: BorderRadius.circular(5)),
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
                      'Recent Activity',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 5,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Savings',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'xxxxxx081',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  Row(),
                ],
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
    );
  }
}
