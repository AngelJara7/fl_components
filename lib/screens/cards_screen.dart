import 'dart:ffi';

import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarjetas"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(name: "Un hermoso paisaje", imageUrl: "https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg",),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: "https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1.jpg",),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: "https://images.squarespace-cdn.com/content/v1/59523d5c4c8b031b6d9dcb5b/1645865436351-NF1WX4AHJUE43OZ3GJCY/_S6A1420-Edit-Edit.jpg?format=2500w",),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}
