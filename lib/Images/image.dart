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
      SingleChildScrollView(
        child: Column(
          children: [

            Text("Image_Asset_  no link ",style: TextStyle(fontSize: 40),),
            Image.asset("assets/Image/India-Flag-696x348.jpg",height: 100,width: 500),
            SizedBox(height: 100,),
            Text("Image_Network  Using Link",style: TextStyle(fontSize: 40),),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNKqm3zIP4GdZouj6bNAQmEJIV0-eC8rnQDRato1xHJA&usqp=CAU&ec=48600113",
                height: 100,width: 500),
            SizedBox(height: 100,),
            Text("Circle Avatar",style: TextStyle(fontSize: 40),),
            CircleAvatar(backgroundImage:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNKqm3zIP4GdZouj6bNAQmEJIV0-eC8rnQDRato1xHJA&usqp=CAU&ec=48600113"),radius: 40,)


          ],
        ),
      )
    );
  }
}
//Image.network("https://img.freepik.com/free-vector/hand-drawn-india-map-background_23-2148202407.jpg?w=2000"),