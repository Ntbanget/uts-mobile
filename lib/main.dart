import 'package:flutter/material.dart';
import 'login_page.dart'; // Import halaman login

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(), // Halaman pertama yang muncul
    );
  }
}
