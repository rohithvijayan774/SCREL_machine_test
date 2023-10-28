import 'package:flutter/material.dart';
import 'package:screl_machine_test/views/user_location.dart';
import 'package:screl_machine_test/widgets/company_details_widget.dart';
import 'package:screl_machine_test/widgets/user_address_widget.dart';
import 'package:screl_machine_test/widgets/user_details_widget.dart';

class UserDetails extends StatelessWidget {
  final String name;
  final String userName;
  final String email;
  final String street;
  final String suite;
  final String city;
  final String zipCode;
  final String phone;
  final String website;
  final String companyName;
  final String catchPhrase;
  final String bs;

  const UserDetails(
      {super.key,
      required this.name,
      required this.userName,
      required this.email,
      required this.street,
      required this.suite,
      required this.city,
      required this.zipCode,
      required this.phone,
      required this.website,
      required this.companyName,
      required this.catchPhrase,
      required this.bs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios_new_outlined),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Divider(
                endIndent: 10,
                indent: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UserDetailsWidget(heading: 'Username', text: userName),
                      UserDetailsWidget(heading: 'Email', text: email),
                      UserDetailsWidget(heading: 'Phone', text: phone),
                      UserDetailsWidget(heading: 'Website', text: website),
                      UserDetailsWidget(heading: 'Username', text: userName),
                      UserAddressWidget(
                          heading: 'Address',
                          street: street,
                          suite: suite,
                          city: city,
                          zipCode: zipCode),
                      CompanyDetailsWidget(
                          heading: 'Company Details',
                          companyName: companyName,
                          catchPhrase: catchPhrase,
                          bs: bs),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                            style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.black),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const UserLocation(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.location_on_outlined,
                                color: Colors.white),
                            label: const Text(
                              'User Location',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
