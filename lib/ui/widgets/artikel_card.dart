import 'package:flutter/material.dart';

class ArtikelCard extends StatelessWidget {
  final String judul;
  final VoidCallback onTap;

  const ArtikelCard({
    Key? key,
    required this.judul,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(judul),
        ),
      ),
    );
  }
}
