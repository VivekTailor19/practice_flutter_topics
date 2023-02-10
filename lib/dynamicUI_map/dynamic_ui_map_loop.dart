import 'package:flutter/material.dart';

class Dynamic_UI_using_map extends StatefulWidget {
  const Dynamic_UI_using_map({Key? key}) : super(key: key);

  @override
  State<Dynamic_UI_using_map> createState() => _Dynamic_UI_using_mapState();
}

class _Dynamic_UI_using_mapState extends State<Dynamic_UI_using_map> {

  int a = 0;
  List name = ["Smile","Sad","Attitude","Heart"];
  List emoji = ["😃 ","☹ ","😎 ","💝 "];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic UI using map Loop",style: TextStyle(fontSize: 25,color: Colors.redAccent),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: name.map((e) => listWidget(emoji[a++],e)).toList(),
      ),
      ),
    );
  }

  Widget listWidget(dynamic emoji,dynamic name)
  {
    return Container(
      height: 90, width: double.infinity,
      color: Colors.teal,
      alignment: Alignment.center,
      child: Text("$emoji $name",style: TextStyle(fontSize: 25),),
    );
  }

}
