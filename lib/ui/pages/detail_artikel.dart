import 'package:flutter/material.dart';

class DetailArtikelPage extends StatelessWidget {
  const DetailArtikelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Detail Artikel',
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Judul Artikel
              Text(
                'Fungsi Coldstorage bagi Petani',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Gambar Artikel
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'assets/images/image_artikel.png', // Ganti URL dengan gambar Anda
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              // Konten Artikel
              Text(
                'Dalam industri pertanian, cold storage memiliki beberapa fungsi penting untuk menyimpan hasil panen dalam jangka waktu lama, diantaranya:',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 16),
              // Poin Artikel
              _buildArtikelPoint(
                '1. Pencegahan Pembusukan',
                'Cold storage sangat efektif dalam memperlambat laju respirasi dan metabolisme produk pertanian. Suhu rendah di dalam cold storage membantu mencegah pembusukan dengan menghambat pertumbuhan mikroorganisme yang menyebabkan kerusakan pada hasil pertanian.',
              ),
              _buildArtikelPoint(
                '2. Kualitas Produk Terjaga',
                'Salah satu fungsi utama cold storage adalah menjaga kualitas produk pertanian dengan suhu yang dikontrol, mempertahankan tekstur, rasa, dan kandungan nutrisi dari produk hasil pertanian yang disimpan tetap dalam kondisi terbaiknya untuk waktu yang lebih lama.',
              ),
              _buildArtikelPoint(
                '3. Pengurangan Kehilangan Pasca Panen',
                'Fungsi lainnya, cold storage juga membantu mengurangi kehilangan pasca panen yang merupakan masalah umum dalam industri pertanian. Dengan menyimpan produk dalam kondisi yang sesuai, cold storage mengurangi kerusakan dan pembusukan setelah panen serta memperpanjang ketahanan hasil yang dapat dipasarkan.',
              ),
              _buildArtikelPoint(
                '4. Penstabilan Harga dan Pasokan',
                'Cold storage mampu menyimpan hasil pertanian lebih lama dan berkontribusi pada penstabilan harga di pasar. Dengan menyimpan produk hingga harga atau permintaan meningkat, cold storage membantu dalam pengelolaan pasokan dan stabilitas harga produk pertanian.',
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  // Widget untuk poin artikel
  Widget _buildArtikelPoint(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
        ],
      ),
    );
  }
}
