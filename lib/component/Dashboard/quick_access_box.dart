import 'package:flutter/material.dart';

import '../../constants.dart';

class QuickAccessBox extends StatefulWidget {
  const QuickAccessBox({super.key});

  @override
  State<QuickAccessBox> createState() => _QuickAccessBoxState();
}

class _QuickAccessBoxState extends State<QuickAccessBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        height: 350,
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Quick Access',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.library_books),
                  Expanded(
                    child: Text(
                      "View Statement",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Icon(Icons.create),
                  Expanded(
                    child: Text(
                      "Cheque Book Request",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Icon(Icons.credit_card),
                  Expanded(
                    child: Text(
                      "New Debit Card",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.credit_card),
                  Expanded(
                    child: Text(
                      "New Credit Card",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Icon(Icons.calculate),
                  Expanded(
                    child: Text(
                      "Installment Calculator",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Icon(Icons.phone_android),
                  Expanded(
                    child: Text(
                      "Eligibility Access",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
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
