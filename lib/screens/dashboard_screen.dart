import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const String route = '/dashboard';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Latar belakang abu-abu muda
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        // supaya bisa discroll kalau konten panjang
        padding: const EdgeInsets.all(16.0), // Jarak dari tepi layar
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Teks Sapaan
            Text(
              'Selamat Datang,',
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            const Text(
              'Afifah Rahma Adibah Samudra',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),

            // Kartu Informasi Utama
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row: ikon + teks saldo
                  Row(
                    children: [
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.grey[500],
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Saldo Saat Ini',
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Rp 1.234.567',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 24),

                  // Tombol aksi
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1E88FF),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('Lihat Detail Transaksi'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // ===== Bagian Top Up / Transfer / History / Profile =====
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _quickMenu(Icons.account_balance_wallet, 'Top Up'),
                _quickMenu(Icons.send, 'Transfer'),
                _quickMenu(Icons.history, 'History'),
                _quickMenu(Icons.person, 'Profile'),
              ],
            ),
            const SizedBox(height: 30),

            // ===== Riwayat Transaksi Terbaru (opsional) =====
            const Text(
              'Transaksi Terbaru',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _transactionItem('Beli Pulsa', '- Rp 25.000', '09 Okt 2025'),
            _transactionItem('Transfer ke Budi', '- Rp 150.000', '08 Okt 2025'),
            _transactionItem('Top Up Saldo', '+ Rp 200.000', '07 Okt 2025'),
          ],
        ),
      ),
    );
  }

  // Widget menu cepat (Top Up, Transfer, dst.)
  Widget _quickMenu(IconData icon, String label) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(12),
          child: Icon(icon, color: Colors.blue, size: 28),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  // Widget item transaksi
  Widget _transactionItem(String title, String amount, String date) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
              Text(
                date,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          Text(
            amount,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: amount.startsWith('-') ? Colors.red : Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
