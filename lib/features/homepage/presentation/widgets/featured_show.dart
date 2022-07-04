import 'package:flutter/material.dart';

class FeaturedShow extends StatelessWidget {
  const FeaturedShow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("go home go bed");
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.85,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://image.tmdb.org/t/p/w500/rbxvGXcD7fixrAsbiAYl9R76uDs.jpg"))),
        foregroundDecoration: featuredDecorator(),
      ),
    );
  }

  BoxDecoration featuredDecorator() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.black,
          Colors.transparent,
          Colors.transparent,
          Colors.black,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
  }
}
