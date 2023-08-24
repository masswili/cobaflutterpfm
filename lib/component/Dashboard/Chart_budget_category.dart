import 'package:flutter/material.dart';

import '../../constants.dart';

class PaymentBox extends StatefulWidget {
  const PaymentBox({super.key});

  @override
  State<PaymentBox> createState() => _PaymentBoxState();
}

class _PaymentBoxState extends State<PaymentBox> {
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
              child: Text('2'),
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
