import 'package:flutter/material.dart';

import '../../constants.dart';

class GoalsBox extends StatefulWidget {
  const GoalsBox({super.key});

  @override
  State<GoalsBox> createState() => _GoalsBoxState();
}

class _GoalsBoxState extends State<GoalsBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: BasePalette.menuBluebird,
          borderRadius: BorderRadius.circular(5)),
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(8, 8, 8, 4),
      child: const Column(
        children: [
          Expanded(
            flex: 4,
            child: Text('1'),
          ),
        ],
      ),
    );
  }
}
