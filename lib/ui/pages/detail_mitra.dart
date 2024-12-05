import 'package:flutter/material.dart';

class DetailMitraPage extends StatelessWidget {
  const DetailMitraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // Hilangkan shadow pada AppBar
        backgroundColor: Colors.white,
        title: Text(
          'Detail Mitra',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'PT. Sinergi Brebes Inovatif',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            // Detail Informasi
            Text(
              'Nama Mitra: PT. Sinergi Brebes Inovatif',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Harga Sewa: Rp 30.000/Kg',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Alamat Gudang:',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Brebes, Jawa Tengah',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 8),
            Text(
              'Jenis Kategori: Hasil Tani - Bawang Merah',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Kapasitas Rak: 50kg',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cari',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Mitra',
          ),
        ],
        currentIndex: 1, // Index tab aktif
        selectedItemColor: const Color.fromARGB(255, 12, 157, 209),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          // Aksi jika tab ditekan
        },
      ),
      backgroundColor: Colors.white,
    );
  }
}
