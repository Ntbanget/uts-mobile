import 'package:flutter/material.dart';

class StatistikPage extends StatelessWidget {
  const StatistikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text('Statistik'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          'Halaman Statistik\nMenampilkan progres produktivitas kamu.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
