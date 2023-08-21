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
        height: 220,
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
    );
  }
}
