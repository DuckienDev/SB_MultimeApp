import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonSB extends StatelessWidget {
  Function() onTap;
  String text;
  Color color;

  ButtonSB({
    super.key,
    required this.onTap,
    required this.text,
    this.color = const Color(0xffDA2126),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
