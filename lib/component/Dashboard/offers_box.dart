import 'package:flutter/material.dart';

import '../../constants.dart';

class OffersBox extends StatefulWidget {
  const OffersBox({super.key});

  @override
  State<OffersBox> createState() => _OffersBoxState();
}

class _OffersBoxState extends State<OffersBox> {
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
                      'Offers',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height:
                                20), // Jarak antara teks "Savings" dan data baru
                        Row(
                          children: [
                            Text(
                              '02 Jan 2022',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                                width:
                                    90), // Jarak antara "02 Jan 2022" dan "AT39374838383"
                            Text(
                              'AT39374838383',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              '02 Jan 2022',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                                width:
                                    90), // Jarak antara "02 Jan 2022" dan "AT39374838383"
                            Text(
                              'AT39374838383',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              '02 Jan 2022',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                                width:
                                    90), // Jarak antara "02 Jan 2022" dan "AT39374838383"
                            Text(
                              'AT39374838383',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ],
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
