import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Screens/home.dart';
import '../Screens/rehab.dart';

class BottomNav extends StatefulWidget {

  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 13.5),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            splashRadius: 60,
            splashColor: Colors.black,
            tooltip: "Home",
            onPressed: () {
              Navigator.of(context).pushNamed(Home.tag);
            },
            icon: SvgPicture.asset(
              "assets/calendar.svg",
              color: Colors.black,
            ),
          ),
          IconButton(
            splashRadius: 60,
            splashColor: Colors.black,
            tooltip: "Rehab",
            onPressed: () {
              Navigator.of(context).pushNamed(Rehab.tag);
            },
            icon: SvgPicture.asset(
              "assets/man-climbing-stairs.svg",
              color: Colors.black,
            ),
          ),
          IconButton(
            splashRadius: 60,
            splashColor: Colors.black,
            tooltip: "Practice",
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/compass.svg",
              color: Colors.black,
            ),
          ),
          IconButton(
            splashRadius: 60,
            splashColor: Colors.black,
            tooltip: "Profile",
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/account (1).svg',
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
