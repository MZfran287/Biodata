import 'package:flutter/material.dart';

void main() {
  runApp(const BiodataApp());
}

class BiodataApp extends StatelessWidget {
  const BiodataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Web',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biodata Mahasiswa'),
        centerTitle: true,
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Foto Profil
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/profile.jpg'), // Ganti dengan path gambar
                ),
                SizedBox(height: 20),

                // Nama
                Text(
                  'Muhammad Zafran Zulkifli',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),

                // NIM
                Text(
                  'NIM: 42230047',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                SizedBox(height: 10),

                // Program Studi
                Text(
                  'Program Studi: Teknologi Informasi',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                SizedBox(height: 20),

                // Deskripsi Diri
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Saya adalah mahasiswa yang bersemangat dalam belajar teknologi terbaru. '
                    'Saya memiliki minat dalam pengembangan aplikasi mobile dan web.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),

                // Kemampuan
                Text(
                  'Kemampuan',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),

                // Daftar Kemampuan
                Column(
                  children: [
                    SkillItem(skill: 'Flutter'),
                    SkillItem(skill: 'Dart'),
                    SkillItem(skill: 'JavaScript'),
                    SkillItem(skill: 'HTML & CSS'),
                    SkillItem(skill: 'Python'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String skill;

  const SkillItem({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.check, color: Colors.blue),
          const SizedBox(width: 8),
          Text(skill, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
