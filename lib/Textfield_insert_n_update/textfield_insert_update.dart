import 'package:flutter/material.dart';

class Textfield_Insert_Update extends StatefulWidget {
  const Textfield_Insert_Update({Key? key}) : super(key: key);

  @override
  State<Textfield_Insert_Update> createState() =>
      _Textfield_Insert_UpdateState();
}

class _Textfield_Insert_UpdateState extends State<Textfield_Insert_Update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.museum_rounded, size: 35),
        title: Text(
          "Registraion Form",
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 250,
                height: 500,
                color: Colors.redAccent.shade100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Icon(Icons.person_outline),
                      suffixIcon: Icon(Icons.send),
                      label: Text("User Name"),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
