// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListTitleGreyWidget extends StatelessWidget {
  Widget trailing;
  String title;
  String subtitle;
  IconData icon;
  Color colorbackgroud;
  Widget leading;
  ListTitleGreyWidget({
    super.key,
    this.trailing = const SizedBox(
      width: 1,
      height: 1,
    ),
    this.leading = const SizedBox(
      width: 1,
      height: 1,
    ),
    this.colorbackgroud = const Color(0xffF5F5F5),
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colorbackgroud, borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        leading: leading,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
              color: Colors.grey, fontSize: 11, fontWeight: FontWeight.w400),
        ),
        trailing: trailing,
      ),
    );
  }
}
