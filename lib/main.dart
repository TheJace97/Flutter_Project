import 'package:flutter/material.dart';
import 'login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: LoginPage(),
    );
  }
}