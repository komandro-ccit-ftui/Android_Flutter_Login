import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login", // App name
      home: Home(), // Definisi halaman
      debugShowCheckedModeBanner: false, //Ngilangin Pita Debug
    );
  }
}
