import 'package:flutter/material.dart';

class UserAddressWidget extends StatelessWidget {
  final String heading;
  final String street;
  final String suite;
  final String city;
  final String zipCode;
  const UserAddressWidget(
      {super.key,
      required this.heading,
      required this.street,
      required this.suite,
      required this.city,
      required this.zipCode});

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
          street,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        Text(
          suite,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        Text(
          city,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        Text(
          zipCode,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
