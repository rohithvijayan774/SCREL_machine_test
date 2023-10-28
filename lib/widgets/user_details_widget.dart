import 'package:flutter/material.dart';

class UserDetailsWidget extends StatelessWidget {
  final String heading;
  final String text;
  const UserDetailsWidget(
      {super.key, required this.heading, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: const TextStyle(fontSize: 20),
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
