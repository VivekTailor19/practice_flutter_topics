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
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text(
          "Text Field",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
              fontSize: 35),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 500,
            child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red,)),
                  border: OutlineInputBorder(),
                  hintText: "ENTER EMAIL ID",
                  //label: Text("E-Mail"),
                  prefixIcon: Icon(Icons.contact_mail),
                  suffixIcon: Icon(Icons.send_and_archive)

                ),
            ),
          )
        ],
      ),
    );
  }
}
