import 'package:flutter/material.dart';
import '../widgets/mitra_card.dart';
import '../widgets/artikel_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // Hilangkan shadow pada AppBar
        backgroundColor:
            const Color.fromARGB(255, 20, 108, 152), // Warna biru kehijauan
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Halo, Sobat Sijuna!',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Cari Mitra / Artikel',
                  prefixIcon: Icon(Icons.search, color: Colors.teal),
                  contentPadding: EdgeInsets.symmetric(vertical: 14.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Rekomendasi Mitra Section
            Text(
              'Rekomendasi Mitra',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: MitraCard(
                    namaMitra: 'PT. Sinergi Brebes Inovatif',
                    lokasi: 'Brebes, Jawa Tengah',
                    kategori: 'Pertanian',
                    onTap: () {
                      Navigator.pushNamed(context, '/detailMitra');
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            // Artikel Section
            Text(
              'Artikel',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ArtikelCard(
                    judul: 'Fungsi Coldstorage bagi Petani',
                    onTap: () {
                      Navigator.pushNamed(context, '/detailArtikel');
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.teal), label: 'Beranda'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.black54), label: 'Cari'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people, color: Colors.black54), label: 'Mitra'),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          // Ganti halaman sesuai index
        },
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}
