
import 'package:flutter/material.dart';

class ExperienceTile extends StatelessWidget {
  final String title;
  final String company;
  final String duration;
  final String location;

  const ExperienceTile({
    super.key,
    required this.title,
    required this.company,
    required this.duration,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('• $title', style: const TextStyle(fontWeight: FontWeight.bold)),
          Text('$company – Full Time'),
          Text(duration),
          Text(location, style: const TextStyle(color: Colors.black54)),
        ],
      ),
    );
  }
}
