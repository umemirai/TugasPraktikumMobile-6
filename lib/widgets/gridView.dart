import 'package:flutter/material.dart';
import 'package:tugas6/detail_wisata.dart';
import 'package:tugas6/models/wisata.dart';
class TampilanGrid extends StatelessWidget {
  const TampilanGrid({super.key});

  @override
  Widget build(BuildContext context) {
    Wisata w = Wisata();
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: w.data.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        final item = w.data[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailWisata(
                   nama: item['nama']!,
                  gambar: item['gambar']!,
                  deskripsi: item['desc']!, 
                  )
              ),
            );
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.network(
                    item['gambar']!,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    item['nama']!,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
