import 'package:cobaflutterpfm/component/Dashboard/Chart_in_out.dart';
import 'package:cobaflutterpfm/component/Dashboard/Chart_merchant.dart';
import 'package:cobaflutterpfm/component/Dashboard/Chart_last_transaction.dart';
import 'package:cobaflutterpfm/component/Dashboard/ads_box.dart';
import 'package:cobaflutterpfm/component/Dashboard/Chart_budget_category.dart';
// import 'package:cobaflutterpfm/component/Dashboard/goals.box.dart';
import 'package:cobaflutterpfm/component/Dashboard/Chart_financial_account.dart';
// import 'package:cobaflutterpfm/component/Dashboard/Chart_budget_category.dart';
// import 'package:cobaflutterpfm/component/Dashboard/quick_access_box.dart';
// import 'package:cobaflutterpfm/component/Dashboard/service_request_box.dart';
import 'package:cobaflutterpfm/component/Dashboard/Chart_top_spend.dart';
// import 'package:cobaflutterpfm/component/Dashboard/Chart_financial_account.dart';
// import 'package:cobaflutterpfm/constants.dart';
import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    ))!;

    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 8,
                        top: 16,
                        right: 8,
                        bottom: 8,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'DASHBOARD',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            _selectDate(context);
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(50, 50),
                            backgroundColor: Colors.blue,
                          ),
                          icon: const Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                          ),
                          label: const Text(
                            "FILTER BY DATE",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              children: [ChartBox(), SpendBox(), ActivityBox()],
            ),
            const Row(
              children: [AccountBox(), PaymentBox(), UpcomingPaymentBox()],
            ),
            const Row(
              children: [AdsBox()],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DashboardScreen(),
  ));
}
