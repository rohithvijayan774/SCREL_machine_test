import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screl_machine_test/controllers/user_controller.dart';
import 'package:screl_machine_test/views/user_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Users List',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Consumer<UserController>(
        builder: (context, provider, _) {
          return FutureBuilder(
            future: provider.fetchUsers(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        strokeWidth: 3,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Loading Data',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Column(
                    children: [
                      const CupertinoSearchTextField(),
                      Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const Divider(
                              indent: 20,
                              endIndent: 20,
                            );
                          },
                          itemCount: provider.usersList.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(
                                provider.usersList[index].name.toString(),
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              subtitle: Text(
                                  provider.usersList[index].email.toString()),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => UserDetails(
                                      name: provider.usersList[index].name
                                          .toString(),
                                      userName: provider
                                          .usersList[index].username
                                          .toString(),
                                      email: provider.usersList[index].email
                                          .toString(),
                                      street: provider
                                          .usersList[index].address!.street
                                          .toString(),
                                      suite: provider
                                          .usersList[index].address!.suite
                                          .toString(),
                                      city: provider
                                          .usersList[index].address!.city
                                          .toString(),
                                      zipCode: provider
                                          .usersList[index].address!.zipcode
                                          .toString(),
                                      phone: provider.usersList[index].phone
                                          .toString(),
                                      website: provider.usersList[index].website
                                          .toString(),
                                      companyName: provider
                                          .usersList[index].company!.name
                                          .toString(),
                                      catchPhrase: provider
                                          .usersList[index].company!.catchPhrase
                                          .toString(),
                                      bs: provider.usersList[index].company!.bs
                                          .toString(),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
