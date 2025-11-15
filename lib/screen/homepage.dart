import 'package:flutter/material.dart';
import 'package:tugas6/widgets/gridView.dart';
import 'package:tugas6/widgets/listView.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: Text("Daftar Wisata"), 
          backgroundColor: Colors.teal,
          bottom: TabBar(
            labelColor: Colors.cyanAccent,
            dividerColor: Colors.cyanAccent,
            indicatorColor: Colors.cyanAccent,
            tabs: [
              Tab(icon: Icon(Icons.list), text: 'List View'),
              Tab(icon: Icon(Icons.grid_on), text: 'Grid View'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabBarView(
              children: [
                TampilanList(),
                TampilanGrid()
              ]
              ),
          ],
          ),
      ),
      );
  }
}