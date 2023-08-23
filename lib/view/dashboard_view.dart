import 'package:cobaflutterpfm/component/Dashboard/Chart_in_out.dart';
import 'package:cobaflutterpfm/component/Dashboard/account_box.dart';
import 'package:cobaflutterpfm/component/Dashboard/Chart_last_transaction.dart';
import 'package:cobaflutterpfm/component/Dashboard/ads_box.dart';
import 'package:cobaflutterpfm/component/Dashboard/Chart_budget_category.dart';
import 'package:cobaflutterpfm/component/Dashboard/goals.box.dart';
import 'package:cobaflutterpfm/component/Dashboard/Chart_financial_account.dart';
import 'package:cobaflutterpfm/component/Dashboard/payment_box.dart';
import 'package:cobaflutterpfm/component/Dashboard/quick_access_box.dart';
import 'package:cobaflutterpfm/component/Dashboard/service_request_box.dart';
import 'package:cobaflutterpfm/component/Dashboard/Chart_top_spend.dart';
import 'package:cobaflutterpfm/component/Dashboard/upcoming_payment_box.dart';
// import 'package:cobaflutterpfm/constants.dart';
import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [ChartBox(), SpendBox(), ActivityBox()],
            ),
            Row(
              children: [AccountBox(), PaymentBox(), UpcomingPaymentBox()],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      GoalsBox(),
                      BudgetsBox(),
                    ],
                  ),
                ),
                QuickAccessBox(),
                OffersBox(),
              ],
            ),
            Row(
              children: [
                ServiceBox(),
                AdsBox(),
                AdsBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
