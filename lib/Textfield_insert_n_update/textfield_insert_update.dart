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
      body: Center(
        child: Container(width: double.infinity,
          height: 800,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(

                  child: TextField(
                    controller: username ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                        prefixIcon: Icon(Icons.person_outline),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              name = username.text;
                              l.add(name);
                              print(l);
                            });
                          },
                            child: Icon(Icons.send)),
                        label: Text("User Name"),

                    ),
                  ),),

                  SizedBox(height: 25,),
                  Column(
                    children:

                    l.asMap().entries.map((e) => list(l[e.key])).toList(),

                  ),
              ],
            ),
          ),
        ),
      ),
    );

  }
  Widget list(String name) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.blueGrey.shade50),
      alignment: Alignment.center,
      child: Text("$name", style: TextStyle(fontSize: 50),),
    );
  }

}
