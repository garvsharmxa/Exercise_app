import 'package:exercise/widgets/sessions.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_bar.dart';


class Home extends StatelessWidget {
  static String tag = 'Home';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 70,
              left: 15,
              right: 22.5,
            ),
            child: Column(
              children: [
               const Text(
                  "Good Morning \nJane",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                  ),
                ),
               const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 130,
                  child: Image.asset("assets/garv.png",fit: BoxFit.fill,),
                ),
                const SizedBox(height: 25,),
                const Session(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
