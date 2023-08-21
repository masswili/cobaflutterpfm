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
            Expanded(
              flex: 4,
              child: Text('1'),
            ),
          ],
        ),
      ),
    );
  }
}
