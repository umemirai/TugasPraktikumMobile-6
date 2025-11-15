import 'package:flutter/material.dart';

class DetailWisata extends StatelessWidget {
  final String nama;
  final String gambar;
  final String deskripsi;

  const DetailWisata({
    super.key,
    required this.nama,
    required this.gambar,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(nama)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(gambar, width: double.infinity, fit: BoxFit.cover),
            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                nama,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                deskripsi,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
