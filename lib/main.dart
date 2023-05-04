import 'package:flutter/material.dart';
import 'package:pfa_project/modulesAdmin/inseresion/insert.dart';

import 'modulesAdmin/homeAdmin/homeScreenAdmin.dart';
import 'modulesusers/HomeScreens/home_screen.dart';
import 'modulesusers/loginScreens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userRole = UserRole.admin;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login App",
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),
        "/home": (context) => const AdminHomePage(),
      },
    );
  }
}

enum UserRole {
  user,
  admin,
}
