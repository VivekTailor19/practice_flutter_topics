import 'package:flutter/material.dart';

class TextField01 extends StatefulWidget {
  const TextField01({Key? key}) : super(key: key);

  @override
  State<TextField01> createState() => _TextField01State();
}

class _TextField01State extends State<TextField01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Text Field",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
              fontSize: 35),
        ),
        centerTitle: true,
      ),
    );
  }
}
