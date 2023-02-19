import 'package:flutter/material.dart';

class EMI_SLider extends StatefulWidget {
  const EMI_SLider({Key? key}) : super(key: key);

  @override
  State<EMI_SLider> createState() => _EMI_SLiderState();
}

double amount = 1000;

double rate = 1;

double duration = 1;

class _EMI_SLiderState extends State<EMI_SLider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade50,
        title: Text(
          "EMI Calculator",
          style: TextStyle(fontSize: 25, color: Colors.redAccent),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Amount",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                Text(
                  "$amount",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      backgroundColor: Colors.red.shade50),
                )
              ],
            ),
            Slider(
                value: amount,
                divisions : 50000,
                max: 100000000,
                onChanged: (value){
                  setState(() {
                    amount = value;
                  });

            })
          ],
        ),
      ),
    );
  }
}
