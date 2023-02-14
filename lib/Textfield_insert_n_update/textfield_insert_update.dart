import 'package:flutter/material.dart';

class Textfield_Insert_Update extends StatefulWidget {
  const Textfield_Insert_Update({Key? key}) : super(key: key);


  @override
  State<Textfield_Insert_Update> createState() =>
      _Textfield_Insert_UpdateState();
}

class _Textfield_Insert_UpdateState extends State<Textfield_Insert_Update> {

  TextEditingController username = TextEditingController();
  String name = "";
  List l = [];
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
          child: Container(width: double.infinity,
            height: 800,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(

                  child: TextField(
                    // onChanged: (value) {
                    //   setState(() {
                    //     name = value;
                    //
                    //   });
                    // },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                        prefixIcon: Icon(Icons.person_outline),
                        suffixIcon: Icon(Icons.send),
                        label: Text("User Name"),

                    ),
                  ),),

                  SizedBox(height: 10),

                  ElevatedButton(onPressed: (){setState(() {
                    name = username.text;
                  });}, child: Text("Submit")),

                  SizedBox(height: 25,),
                  Container(
                    width: 30,
                    height: 40,
                    child: Text("$l",),

                  ),


                 // Text("$name"),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
