import 'package:flutter/material.dart';
import 'dart:io';

class Age_Calculator_UI extends StatefulWidget {
  const Age_Calculator_UI({Key? key}) : super(key: key);

  @override
  State<Age_Calculator_UI> createState() => _Age_Calculator_UIState();
}

class _Age_Calculator_UIState extends State<Age_Calculator_UI> {

  TextEditingController fyear = TextEditingController();
  TextEditingController lyear = TextEditingController();
  int year = 0;



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

                    height: 70,
                    width: double.infinity,
                    alignment: Alignment.center,

                    child: TextField(
                      controller: fyear ,
                        decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      border: OutlineInputBorder(),
                      hintText: "Enter Date of Birth Year ",
                      prefixIcon: Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                      suffixIcon:

                          Icon(
                        Icons.arrow_circle_right,
                        color: Colors.white,
                      )),
                    )),

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
                    height: 70,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: TextField(
                        controller: lyear ,
                        decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      border: OutlineInputBorder(),
                      hintText: "Enter Current Year",
                      prefixIcon: Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                          suffixIcon: Icon(
                                Icons.arrow_circle_right,
                                color: Colors.white,
                              )),
                    )),

                  Spacer(),
                  InkWell(onTap: () {
                    String fdata = fyear.text;
                    String ldata = lyear.text;
                    int first = int.parse(fdata);
                    int last = int.parse(ldata);

                    setState((){year = last- first;});

                       },
                      child: Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Calculate AGE",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ))),
                  ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ), // First BOX
            SizedBox(
              height: 40,
            ),
            Text(
              "--- ANSWER ---",
              style: TextStyle(
                  color: Colors.black, fontSize: 15, letterSpacing: 10),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 35,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                    child: Text(
                  "$year",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))), // Last BOX
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
