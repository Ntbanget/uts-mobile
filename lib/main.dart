import 'package:flutter/material.dart';
import 'login_page.dart'; // Import halaman login

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // tambahkan const di sini (best practice)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'NotoSans', // 👈 tambahkan ini supaya pakai font custom
      ),
      home:
          const LoginPage(), // const juga di sini kalau LoginPage pakai StatelessWidget
    );
  }
}
