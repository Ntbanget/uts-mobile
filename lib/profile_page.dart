import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  final VoidCallback onBackToDashboard;

  const ProfilePage({
    super.key,
    required this.username,
    required this.onBackToDashboard,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'Profil Mahasiswa',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/logo.png',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              username,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'NIM: 24670049',
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 20),

            Card(
              color: const Color(0xFF1E1E1E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    _ProfileItem('Program Studi', 'Teknik Informatika'),
                    Divider(color: Colors.white24),
                    _ProfileItem('Semester', '5'),
                    Divider(color: Colors.white24),
                    _ProfileItem('Email', 'mahasiswa@example.com'),
                    Divider(color: Colors.white24),
                    _ProfileItem(
                      'Alamat',
                      'Jalan Dokter Cipto No.24,Kota Semarang,',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: onBackToDashboard,
              icon: const Icon(Icons.arrow_back),
              label: const Text(
                'Kembali ke Dashboard',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileItem extends StatelessWidget {
  final String title;
  final String value;
  const _ProfileItem(this.title, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Text(value, style: const TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }
}
