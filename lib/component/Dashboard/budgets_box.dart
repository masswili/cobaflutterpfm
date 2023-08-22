import 'package:flutter/material.dart';

import '../../constants.dart';

class BudgetsBox extends StatefulWidget {
  const BudgetsBox({super.key});

  @override
  State<BudgetsBox> createState() => _BudgetsBoxState();
}

class _BudgetsBoxState extends State<BudgetsBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: BasePalette.baseLight,
          borderRadius: BorderRadius.circular(5)),
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(8, 4, 8, 8),
      child: const Column(
        children: [
          Expanded(
            flex: 4,
            child: Text('2'),
          ),
        ],
      ),
    );
  }
}
