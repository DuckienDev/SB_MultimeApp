// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardHelpWidget extends StatelessWidget {
  double sized;
  Widget icon;
  String text;
  CardHelpWidget({
    Key? key,
    required this.icon,
    required this.sized,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sized,
      height: sized / 2,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(text),
        ],
      ),
    );
  }
}
