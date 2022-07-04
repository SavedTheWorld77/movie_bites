import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyListButton extends StatelessWidget {
  const MyListButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("my list tapped");
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Icon(FontAwesomeIcons.plus, color: Colors.white),
          SizedBox(height: 10),
          Text(
            "My List",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
