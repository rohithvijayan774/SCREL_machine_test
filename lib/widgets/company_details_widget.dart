import 'package:flutter/material.dart';

class CompanyDetailsWidget extends StatelessWidget {
  final String heading;
  final String companyName;
  final String catchPhrase;
  final String bs;
  const CompanyDetailsWidget(
      {super.key,
      required this.heading,
      required this.companyName,
      required this.catchPhrase,
      required this.bs});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          companyName,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        Text(
          catchPhrase,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        Text(
          bs,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
