import 'package:flutter/material.dart';

import '../../constants.dart';

class AdsBox extends StatefulWidget {
  const AdsBox({super.key});

  @override
  State<AdsBox> createState() => _AdsBoxState();
}

class _AdsBoxState extends State<AdsBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
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
    );
  }
}
