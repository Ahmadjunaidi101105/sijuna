import 'package:flutter/material.dart';

class MitraCard extends StatelessWidget {
  final String namaMitra;
  final String lokasi;
  final String kategori;
  final VoidCallback onTap;

  const MitraCard({
    Key? key,
    required this.namaMitra,
    required this.lokasi,
    required this.kategori,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(namaMitra, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(lokasi),
              Text(kategori),
            ],
          ),
        ),
      ),
    );
  }
}
