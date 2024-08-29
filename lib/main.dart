import 'package:facebook/home/home.dart';
import 'package:flutter/material.dart';

import 'login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Home.routeName : (_) => const Home(),
        Login.routeName : (_) => const Login()
      },
      initialRoute: Login.routeName,

    );
  }
}

