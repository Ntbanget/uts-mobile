import 'package:flutter/material.dart';

class CatatanPage extends StatelessWidget {
  const CatatanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text('Catatan'),
        backgroundColor: Colors.purple,
      ),
      body: const Center(
        child: Text(
          'Halaman Catatan\n(Tempat mencatat tugas dan ide)',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
