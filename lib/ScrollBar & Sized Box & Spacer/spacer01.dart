import 'package:flutter/material.dart';

class Spacer01 extends StatefulWidget {
  const Spacer01({Key? key}) : super(key: key);

  @override
  State<Spacer01> createState() => _Spacer01State();
}

class _Spacer01State extends State<Spacer01> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(
        title: Text("Scroll & SizedBar",style: TextStyle(fontSize: 25,color: Colors.redAccent),),
        centerTitle: true,
      ),

      body:
        Column(
          children: [
            Container(height: 40, width: 60, color: Colors.pink,),SizedBox(height: 10,),
            Text("Hello",style: TextStyle(fontSize: 10,color: Colors.redAccent),),
            Spacer(),

            Container(height: 40, width: 60, color: Colors.green,),SizedBox(height: 10,),

          ],
        ),



    );
  }
}

