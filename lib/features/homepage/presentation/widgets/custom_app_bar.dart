import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.scrollOffset}) : super(key: key);
  final double scrollOffset;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Color(0xFF0E0E0E),
      ),
      backgroundColor: Colors.black
          .withOpacity((scrollOffset / 350).clamp(0, 0.5).toDouble()),
      pinned: true,
      expandedHeight: kToolbarHeight + .000001,
      leading: SizedBox(
        width: 5.0,
        height: 5.0,
        child: Image.asset("assets/clapper_logo.png"),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text(
            "TV Shows",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "Movies",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "My List",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
