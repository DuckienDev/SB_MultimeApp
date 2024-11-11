import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonUpdateProfile extends StatelessWidget {
  String textButton1;
  String textButton2;
  void Function()? onPressed1;
  void Function()? onPressed2;

  ButtonUpdateProfile({
    Key? key,
    required this.textButton1,
    required this.textButton2,
    this.onPressed1,
    this.onPressed2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 160,
          child: ElevatedButton(
            onPressed: onPressed1,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            child: Text(
              textButton1,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          width: 160,
          child: ElevatedButton(
            onPressed: onPressed2,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text(
              textButton2,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
