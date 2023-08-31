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
            const Padding(
              padding: EdgeInsets.all(8.0),
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
                padding: const EdgeInsets.only(top: 16, right: 8, left: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Card(
                        elevation: 10,
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 32, left: 32),
                                child: Column(
                                  children: [
                                    Container(
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
                                      margin: EdgeInsets.only(top: 8),
                                      child: Text('Budget'),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 32, left: 48),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                child: Text('Base'),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 32),
                                                child: Text('Sisa'),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 150),
                                                child:
                                                    Text('Rp. 1.000.000.000'),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 32, left: 150),
                                                child: Text('Rp. 500.000.000'),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 16),
                                      child: Row(
                                        children: [
                                          LinearPercentIndicator(
                                            padding: EdgeInsets.all(0),
                                            width: 298.0,
                                            lineHeight: 15.0,
                                            percent: 0.5,
                                            animation: true,
                                            progressColor: BasePalette.primary,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('50%'),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Text('Terpakai'),
                                          ),
                                          Container(
                                              margin: EdgeInsets.only(left: 32),
                                              child: Text('Rp. 500.000.000')),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Card(
                        elevation: 10,
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 32, left: 32),
                                child: Column(
                                  children: [
                                    Container(
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
                                      margin: EdgeInsets.only(top: 8),
                                      child: Text('Pemasukan'),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 32, left: 48),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text('Base'),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 32),
                                                child: Text('Total Income'),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 100),
                                                child:
                                                    Text('Rp. 1.000.000.000'),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 32, left: 100),
                                                child: Text('Rp. 500.000.000'),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 16),
                                      child: Row(
                                        children: [
                                          LinearPercentIndicator(
                                            padding: EdgeInsets.all(0),
                                            width: 298.0,
                                            lineHeight: 15.0,
                                            percent: 0.5,
                                            animation: true,
                                            progressColor: BasePalette.primary,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('50%'),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Text('Persentase pemasukan'),
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
                      child: Container(
                        margin: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
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
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 28, left: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            'Makanan & Minuman',
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 45),
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: LinearPercentIndicator(
                                              padding: EdgeInsets.all(0),
                                              lineHeight: 15.0,
                                              percent: 0.5,
                                              animation: true,
                                              progressColor: BasePalette.primary,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text('Sisa budget'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 32),
                                        child: Text('pengeluaran'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 32),
                                        child: Text('Total budget'),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          child: Text('Rp. 500.000.000'),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 32),
                                          child: Text('Rp. 500.000.000'),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 32),
                                          child: Text('Rp. 1.000.000.000'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Card(
                                  elevation: 5,
                                  child: Container(
                                    height: 25,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      color: Colors.black,
                                    )),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 73,
                                          height: 25,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    BasePalette.primary,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(0))),
                                            child: const Text(
                                              "EDIT",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 75,
                                          height: 25,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(0))),
                                            child: const Text(
                                              "DETAIL",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
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
