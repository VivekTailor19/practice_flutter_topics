import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  const Images({Key? key}) : super(key: key);

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Text("Image_Asset_  no link ",style: TextStyle(fontSize: 40),),
          Image.asset("assets/Image/India-Flag-696x348.jpg"),
          SizedBox(height: 100,),
          Text("Image_Network  Using Link",style: TextStyle(fontSize: 40),),
          Image.network("https://img.freepik.com/free-vector/hand-drawn-india-map-background_23-2148202407.jpg?w=2000")

        ],
      )
    );
  }
}
//Image.network("https://img.freepik.com/free-vector/hand-drawn-india-map-background_23-2148202407.jpg?w=2000"),