import 'package:flutter/material.dart';
import 'package:tugas6/detail_wisata.dart';
import 'package:tugas6/models/wisata.dart';// <- tambahkan import ini

class TampilanList extends StatelessWidget {
  const TampilanList({super.key});

  @override
  Widget build(BuildContext context) {
    Wisata w = Wisata();
    return ListView.builder(
      itemCount: w.data.length,
      itemBuilder: (context, index) {
        final item = w.data[index];
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: ListTile(
            leading: Image.network(
              item['gambar']!,
              width: 100,
              fit: BoxFit.cover,
            ),
            title: Text(item['nama']!),
            subtitle: Text(
              item['desc']!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailWisata(
                    nama: item['nama']!,
                    gambar: item['gambar']!,
                    deskripsi: item['desc']!,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
