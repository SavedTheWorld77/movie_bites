import 'package:flutter/material.dart';
import 'featured_play_button.dart';
import 'info_button.dart';
import 'my_list_button.dart';

class FeaturedShowButtons extends StatelessWidget {
  const FeaturedShowButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        MyListButton(),
        FeaturedPlayButton(),
        InfoButton(),
      ],
    );
  }
}
