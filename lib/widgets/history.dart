import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HistoryCard(
            image: "assets/1.png",
            press: () {},
          ),
          SizedBox(height: 8,),
          HistoryCard(
            image: "assets/2.png",
            press: () {},
          ),
          SizedBox(height: 8,),
          HistoryCard(
            image: "assets/3.png",
            press: () {},
          ),
          SizedBox(height: 8,),
          HistoryCard(
            image: "assets/2.png",
            press: () {},
          ),
          SizedBox(height: 8,),
          HistoryCard(
            image: "assets/1.png",
            press: () {},
          ),
          SizedBox(height: 8,),
          HistoryCard(
            image: "assets/2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  const HistoryCard({Key? key,required this.image, required this.press}) : super(key: key,);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.zero,
        width: 360,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
            DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
      ),
    );
  }
}
