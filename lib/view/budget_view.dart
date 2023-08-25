import 'package:cobaflutterpfm/constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BudgetPage extends StatefulWidget {
  const BudgetPage({super.key});

  @override
  State<BudgetPage> createState() => _BudgetPageState();
}

class _BudgetPageState extends State<BudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8, top: 16, right: 8, bottom: 8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'BUDGET',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        margin: EdgeInsets.only(right: 20),
                        elevation: 10,
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 32, left: 32),
                                        height: 60,
                                        width: 60,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/Logo-Bank-BNI-PNG.png'),
                                              fit: BoxFit.fill,
                                            ),
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 8, left: 32),
                                        child: Text('Budget'),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 32, left: 48),
                                        child: Text('Base'),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 32, left: 48),
                                        child: Text('Sisa'),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 32, left: 130),
                                        child: Text('Rp. 1.000.000.000'),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 32, left: 130),
                                        child: Text('Rp. 500.000.000'),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 132),
                                child: LinearPercentIndicator(
                                  width: 292.0,
                                  lineHeight: 15.0,
                                  percent: 0.5,
                                  animation: true,
                                  progressColor: BasePalette.primary,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 142, top: 8),
                                    child: Text('Terpakai')
                                    ),
                                  Container(
                                    margin: EdgeInsets.only(left: 32, top: 8),
                                    child: Text('Rp. 500.000.000')
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        margin: EdgeInsets.only(left: 20),
                        elevation: 10,
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 32, left: 32),
                                        height: 60,
                                        width: 60,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/Logo-Bank-BNI-PNG.png'),
                                              fit: BoxFit.fill,
                                            ),
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 8, left: 36),
                                        child: Text('Pemasukan'),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 32),
                                        child: Text('Base'),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 32, left: 54),
                                        child: Text('Total Income'),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 32, left: 90),
                                        child: Text('Rp. 1.000.000.000'),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 32, left: 90),
                                        child: Text('Rp. 500.000.000'),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 154),
                                child: LinearPercentIndicator(
                                  width: 302.0,
                                  lineHeight: 15.0,
                                  percent: 0.5,
                                  animation: true,
                                  progressColor: BasePalette.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding:
                  const EdgeInsets.only(top: 32, left: 8, right: 8, bottom: 8),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8, top: 16, right: 8, bottom: 8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'BUDGET CATEGORY',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(50, 50),
                            backgroundColor: BasePalette.primary,
                          ),
                          child: const Text(
                            "ADD",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, right: 16, left: 16, bottom: 8),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 32,
                    mainAxisSpacing: 32,
                    childAspectRatio: 1),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
