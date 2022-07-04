import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
      color: const Color(0xFF0E0E0E),
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 100,
      child: Row(children: [
        Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.home_outlined,
                  color: Color(0xFF484A4C),
                ),
                Spacer(),
                Text("Home",
                    style: TextStyle(color: Color(0xFF484A4C), fontSize: 12)),
              ],
            )),
        Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  FontAwesomeIcons.clapperboard,
                  color: Color(0xFF484A4C),
                ),
                Spacer(),
                Text(
                  "Coming Soon",
                  style: TextStyle(color: Color(0xFF484A4C), fontSize: 12),
                ),
              ],
            )),
        Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(FontAwesomeIcons.c, color: Color(0xFF484A4C)),
                Spacer(),
                Text(
                  "Randomizer",
                  style: TextStyle(color: Color(0xFF484A4C), fontSize: 12),
                ),
              ],
            )),
      ]),
    );
  }
}
