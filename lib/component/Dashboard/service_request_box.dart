import 'package:flutter/material.dart';

class ServiceBox extends StatefulWidget {
  const ServiceBox({super.key});

  @override
  State<ServiceBox> createState() => _ServiceBoxState();
}

class _ServiceBoxState extends State<ServiceBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        height: 200,
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
