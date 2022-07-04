import 'package:flutter/material.dart';

class PreviewShow extends StatelessWidget {
  const PreviewShow({Key? key, required this.image})
      : super(
          key: key,
        );
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 146,
      width: 110,
      margin: const EdgeInsets.only(left: 10, bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
    );
  }
}
