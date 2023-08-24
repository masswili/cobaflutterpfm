import 'package:flutter/material.dart';

import '../../constants.dart';

class UpcomingPaymentBox extends StatefulWidget {
  const UpcomingPaymentBox({super.key});

  @override
  State<UpcomingPaymentBox> createState() => _UpcomingPaymentBoxState();
}

class _UpcomingPaymentBoxState extends State<UpcomingPaymentBox> {
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
            const Expanded(
              flex: 5,
              child: Text('3'),
            ),
            Expanded(
              flex: 5,
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
