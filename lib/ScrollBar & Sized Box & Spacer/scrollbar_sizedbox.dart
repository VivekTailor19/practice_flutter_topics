import 'package:flutter/material.dart';

class ScrollBar_SizedBox extends StatefulWidget {
  const ScrollBar_SizedBox({Key? key}) : super(key: key);

  @override
  State<ScrollBar_SizedBox> createState() => _ScrollBar_SizedBoxState();
}

class _ScrollBar_SizedBoxState extends State<ScrollBar_SizedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Scroll & SizedBar",style: TextStyle(fontSize: 25,color: Colors.redAccent),),
        centerTitle: true,
      ),

      body:  SingleChildScrollView(
          child: Column(
            children: [
              Text("Hello",style: TextStyle(fontSize: 50,color: Colors.redAccent),),
              SizedBox(height: 10,),
              Container(height: 40, width: 60, color: Colors.pink,),SizedBox(height: 10,),
              Container(height: 40, width: 60, color: Colors.green,),SizedBox(height: 10,),
              Container(height: 40, width: 60, color: Colors.pink,),SizedBox(height: 10,),
              Container(height: 30, width: 60, color: Colors.yellow,),SizedBox(height: 10,),
              Text("Hello",style: TextStyle(fontSize: 50,color: Colors.redAccent),),SizedBox(height: 10,),
              Container(height: 40, width: 60, color: Colors.pink,),SizedBox(height: 10,),
              Container(height: 500, width: 60, color: Colors.yellow,),SizedBox(height: 10,),
              Text("Hello",style: TextStyle(fontSize: 50,color: Colors.redAccent),),

            ],

          ),

      ),

    );
  }
}
