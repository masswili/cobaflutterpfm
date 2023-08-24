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
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
            color: BasePalette.green, borderRadius: BorderRadius.circular(5)),
        height: 250,
        margin: EdgeInsets.all(8),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Transaksi Terakhir',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Stack(
                children: [Text('Isian')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
