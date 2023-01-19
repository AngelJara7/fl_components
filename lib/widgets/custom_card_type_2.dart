import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
        ),
      elevation: 10,
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage("https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg"),
            placeholder: AssetImage("assets/jar-loading.gif"),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: const Text("Un hermoso paisaje")
              )
        ],
      ),
    );
  }
}