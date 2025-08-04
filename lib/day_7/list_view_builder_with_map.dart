import 'package:flutter/material.dart';

class Day7ListViewBuilderWithMap extends StatelessWidget {
  const Day7ListViewBuilderWithMap({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dataMakanan = [
      {"nama": "Nasi Rendang", "color": Colors.red, "rasa": "Lamak Bana"},
      {"nama": "Nasi Warteg", "color": Colors.yellow, "rasa": "Murah bet"},
      {"nama": "Nasi Kucing", "color": Colors.green, "rasa": "Dikit bet"},
      {"nama": "Nasi Portugal", "color": Colors.blue, "rasa": "Banyak bet"},
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Day 7 List View Builder with Map")),
      body: ListView.builder(
        itemCount: dataMakanan.length,
        // reverse: true,
        itemBuilder: (BuildContext context, int index) {
          final data = dataMakanan[index];
          return Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: data["color"],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dataMakanan[index]["nama"],
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      Text(
                        dataMakanan[index]["rasa"],
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
