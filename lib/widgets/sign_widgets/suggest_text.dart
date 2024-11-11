import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SuggestText extends StatelessWidget {
  String text;
  Color color;

  SuggestText({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
           Icon(
            Icons.error,
            color: color,
          ),
          Text(
            "   $text",
            style:  TextStyle(
              color: color,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
