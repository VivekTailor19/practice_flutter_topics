import 'package:flutter/material.dart';

class Age_Calculator_UI extends StatefulWidget {
  const Age_Calculator_UI({Key? key}) : super(key: key);

  @override
  State<Age_Calculator_UI> createState() => _Age_Calculator_UIState();
}

class _Age_Calculator_UIState extends State<Age_Calculator_UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.sort_rounded,
                    color: Colors.black,
                    size: 20,
                  ),
                  Text(
                    "Age Calculator",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Icon(Icons.account_box, color: Colors.black, size: 20)
                ],
              ),
            ), //AppBar
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff6470DE),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Date of Birth",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 35,
                    width: double.infinity,
                    child: TextField(
                        decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      border: OutlineInputBorder(),
                      hintText: "Enter Year ",
                      prefixIcon: Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Current Date",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 35,
                    width: double.infinity,
                    child: TextField(
                        decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                    )),
                  ),
                  Spacer(),
                  Container(
                      height: 35,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "Calculate AGE",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ))),
                  SizedBox(height: 5,)
                ],
              ),
            ),  // First
            SizedBox(height: 40,),
            Text(
              "--- ANSWER ---",
              style: TextStyle(color: Colors.black,fontSize: 15,letterSpacing: 10),
            ),
            Container(
              height: 35,
              width: double.infinity,
              child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.question_answer_outlined,
                      color: Colors.lightBlueAccent,
                    ),
                  )),
            ),
            SizedBox(height: 5,)

          ],
        ),
      ),
    );
  }
}
