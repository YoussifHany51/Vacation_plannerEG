import 'package:flutter/material.dart';
import 'package:travel_ui/widgets/background.dart';

import 'home.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 350,
                ),
                Text(
                  "Let's make",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 46,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "your dream",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 46,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "vacation.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 46,
                      fontWeight: FontWeight.bold),
                ),
                // ignore: deprecated_member_use
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Home()));
                  },
                  child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
