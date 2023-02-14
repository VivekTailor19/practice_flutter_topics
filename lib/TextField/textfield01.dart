import 'package:flutter/material.dart';

class TextField01 extends StatefulWidget {
  const TextField01({Key? key}) : super(key: key);

  @override
  State<TextField01> createState() => _TextField01State();
}

class _TextField01State extends State<TextField01> {

  TextEditingController email = TextEditingController();
  String data = "";
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
      body: Center(
        child: Column(
          children: [
            Container(
              height: 50,
              width: 500,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      data = value;

                    });
                  },
                  //controller: email,    //for get output after press
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,)),
                      border: OutlineInputBorder(),
                      hintText: "ENTER EMAIL ID",
                      //label: Text("E-Mail"),
                      prefixIcon: Icon(Icons.contact_mail),
                      suffixIcon: Icon(Icons.send_and_archive),
                    ),

                ),

              ),
            ),
            SizedBox(height: 50,),


             ElevatedButton(onPressed: (){setState(() {
              data = email.text;
            });}, child: Text("Submit")),





            SizedBox(height: 25,),
            Text("$data"),


          ],
        ),
      ),
    );
  }
}
