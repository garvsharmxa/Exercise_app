import 'package:flutter/material.dart';


class Session extends StatelessWidget {
  const Session({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SessionCard(
            image: "assets/s11.png",
            press: () {},
          ),
          SessionCard(
            image: "assets/s12.png",
            press: () {},
          ),
          SizedBox(height: 10,),
          SessionCard(
            image: "assets/s13.png",
            press: () {},
          ),
          SizedBox(height: 10,),
          SessionCard(
            image: "assets/s14.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  const SessionCard({Key? key,required this.image, required this.press}) : super(key: key,);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.zero,
        width: 430,
        height: 138,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
            DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
      ),
    );
  }
}
