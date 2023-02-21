import 'package:flutter/material.dart';

class EMI_SLider extends StatefulWidget {
  const EMI_SLider({Key? key}) : super(key: key);

  @override
  State<EMI_SLider> createState() => _EMI_SLiderState();
}

double amount = 5000;
double rate = 1;
double duration = 1;
double money = 0 ;

class _EMI_SLiderState extends State<EMI_SLider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
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
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Amount",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "\$  ${amount.toInt()}",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        backgroundColor: Colors.red.shade50),
                  ),
                )
              ],
            ),
            Slider(
                value: amount,
                divisions: 10,
                max: 100000,
                onChanged: (value) {
                  setState(() {
                    amount = value;
                  });
                }),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Interest Rate",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "${rate.toInt()} \%",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        backgroundColor: Colors.red.shade50),
                  ),
                )
              ],
            ),
            Slider(
                value: rate,
                //divisions : 30,
                max: 30,
                onChanged: (value) {
                  setState(() {
                    rate = value;
                  });
                }),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Duration",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "${duration.toInt()} Yr",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        backgroundColor: Colors.red.shade50),
                  ),
                )
              ],
            ),
            Slider(
                value: duration,
                //divisions : 10,
                max: 25,
                onChanged: (value) {
                  setState(() {
                    duration = value;
                  });
                }),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onDoubleTap: () {

                setState(() {
                  money = (amount * rate * duration / 100 );
                });
              },
              child: Container(
                width: 200,
                height: 80,
                alignment: Alignment.center,
                child: Text(
                    "Calculate",style: TextStyle(fontSize: 25),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.orangeAccent, Colors.teal]),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 200,
              height: 80,
              alignment: Alignment.center,
              child: Text(
                "\$ ${money.toInt()}",style: TextStyle(fontSize: 30),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.orangeAccent, Colors.teal]),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
            ),
          ],
        ),
      ),
    );
  }
}
