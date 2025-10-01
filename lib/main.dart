import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Bagian title section (judul + lokasi + rating)
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            // soal 1 → kolom rata kiri
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // soal 2 → judul dengan padding bawah
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          // soal 3 → ikon dan jumlah rating
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: NIM Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Deanissa 2314760187'),
        ),
        body: Column(
          children: [
            titleSection,
            const SizedBox(height: 20),
            const Center(
              //child: Text('Hello World'),
            ),
          ],
        ),
      ),
    );
  }
}
