// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconButtonMTM extends StatelessWidget {
  double sized;
  Color colorBackgroud;
  IconData icon;

  IconButtonMTM({
    super.key,
    this.sized = 70,
    this.colorBackgroud = Colors.white,
    this.icon = Icons.close,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sized,
      height: sized,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorBackgroud,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 8.0,
              offset: const Offset(0, 4),
            ),
          ]),
      child: Center(child: Icon(icon, size: sized - 15)),
    );
  }
}
