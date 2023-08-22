import 'package:flutter/material.dart';

class AccountBox extends StatefulWidget {
  const AccountBox({super.key});

  @override
  State<AccountBox> createState() => _AccountBoxState();
}

class _AccountBoxState extends State<AccountBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        height: 330,
        margin: EdgeInsets.all(8),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 8,
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(255, 219, 219, 219),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 8,
                        right: 8,
                        bottom: 8,
                      ),
                      child: Text(
                        'My Accounts',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 219, 219, 219),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                        height: 40,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.blue
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Text(
                          'Current & Savings',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 219, 219, 219),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       SizedBox(
                        width: 10,
                        height: 40,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.red
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Text(
                          'Term Deposits',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 219, 219, 219),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                        height: 40,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.green
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Text(
                          'Loans',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                        height: 60,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.yellow
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Credit Card',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text('Apply for a new credit card')
                          ],
                        ),
                      ),
                    ],
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
