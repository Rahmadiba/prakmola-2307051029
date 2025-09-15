import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {
  const BasicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saatnya Menabung'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ganti dengan Container dulu untuk avoid asset error
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.savings,
                size: 80,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Aplikasi Menabung',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi untuk testing
                print('Tombol ditekan!');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text('AYO Mulai Menabung!'),
            ),
          ],
        ),
      ),
    );
  }
}