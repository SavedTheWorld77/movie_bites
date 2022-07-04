import 'package:flutter/material.dart';

class InfoButton extends StatelessWidget {
  const InfoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("info tapped");
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Icon(Icons.info_outline, color: Colors.white),
          SizedBox(height: 10),
          Text(
            "Info",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
