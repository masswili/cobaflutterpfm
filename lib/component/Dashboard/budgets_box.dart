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
          color: BasePalette.menuBluebird,
          borderRadius: BorderRadius.circular(5)),
      height: 100,
      margin: EdgeInsets.all(8),
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
