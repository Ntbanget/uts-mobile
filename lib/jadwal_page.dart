import 'package:flutter/material.dart';

class JadwalPage extends StatelessWidget {
  const JadwalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> jadwalList = [
      {
        'judul': 'Rapat Tim Proyek',
        'waktu': '08:30 - 09:30',
        'tempat': 'Ruang Meeting 2',
      },
      {
        'judul': 'Presentasi Kelas',
        'waktu': '10:00 - 11:00',
        'tempat': 'Aula Utama',
      },
      {
        'judul': 'Mengerjakan Tugas Flutter',
        'waktu': '13:00 - 15:00',
        'tempat': 'Kampus / Rumah',
      },
      {
        'judul': 'Belajar Desain UI',
        'waktu': '16:00 - 17:30',
        'tempat': 'Online Course',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text('Jadwal Harian'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView.builder(
        itemCount: jadwalList.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final jadwal = jadwalList[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 14),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jadwal['judul']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        jadwal['waktu']!,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        jadwal['tempat']!,
                        style: const TextStyle(
                          color: Colors.white38,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
