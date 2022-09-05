import 'package:exercise/widgets/history.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';

class Rehab extends StatefulWidget {
  static String tag = 'Rehab';
  const Rehab({Key? key}) : super(key: key);

  @override
  State<Rehab> createState() => _RehabState();
}

class _RehabState extends State<Rehab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80,left: 55,right: 100),
              child: Container(
                child: const Text(
                  "Rehab Programme",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Column(
              children: [
                Container(
                  width: 370,
                  height: 210,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(width: 0,color: Colors.transparent),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                     child: Image.asset("assets/ggb.jpg",fit: BoxFit.fill,),
                ),
               const  SizedBox(height: 20,),
                Column(
                  children: [
                    Container(
                      child: const Padding(
                        padding:  EdgeInsets.only(right: 250),
                        child: Text("History",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
               const SizedBox(height: 20,),
                Container(
                  child: Image.asset("assets/ga.png",fit: BoxFit.fill,),
                  height: 80,
                  width: 380,

                ),
                const SizedBox(height: 25,),
                const History(),

              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}


