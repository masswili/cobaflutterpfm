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
        height: 225,
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
                      'Recent Activity',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Savings',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(
                            height:
                                20), // Jarak antara teks "Savings" dan data baru
                        Row(
                          children: [
                            Text(
                              '02 Jan 2022',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                                width:
                                    14), // Jarak antara "02 Jan 2022" dan "AT39374838383"
                            Text(
                              'AT39374838383',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
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
                                  TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                                width:
                                    14), // Jarak antara "02 Jan 2022" dan "AT39374838383"
                            Text(
                              'AT39374838383',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
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
                                  TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                                width:
                                    14), // Jarak antara "02 Jan 2022" dan "AT39374838383"
                            Text(
                              'AT39374838383',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'xxxxxx081',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(
                            height:
                                20), // Jarak antara teks "xxxxxx081" dan data baru
                        Text(
                          'Rp. 1.000.000',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(
                            height:
                                10), // Jarak antara teks "xxxxxx081" dan data baru
                        Text(
                          'Rp. 1.000.000',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(
                            height:
                                10), // Jarak antara teks "xxxxxx081" dan data baru
                        Text(
                          'Rp. 1.000.000',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
