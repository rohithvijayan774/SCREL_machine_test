import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:http/http.dart' as http;
import 'package:screl_machine_test/models/user_model/user_model.dart';

class UserController with ChangeNotifier {
  var usersData;
  List<UserModel> usersList = [];

  Future<List<UserModel>> fetchUsers() async {
    usersList.clear();

    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      usersData = jsonDecode(response.body.toString());
      for (Map<String, dynamic> i in usersData) {
        usersList.add(UserModel.fromJson(i));
      }
      return usersList;
    } else {
      print('Error : Status Code ${response.statusCode}');
      return usersList;
    }
  }

//--------------for Map -------------------------------

  final mapController = MapController.withPosition(
    initPosition: GeoPoint(
      latitude: 120.4358055,
      longitude: 8.4737324,
    ),
  );
}
