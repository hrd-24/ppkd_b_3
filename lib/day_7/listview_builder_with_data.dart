import 'package:flutter/material.dart';

class Day7ListViewBuilderWithData extends StatelessWidget {
  const Day7ListViewBuilderWithData({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> dataPeserta = ["Farrez", "Ara", "Hanna", "Ruli", "Aldi"];
    return Scaffold(
      appBar: AppBar(title: Text("Day 7 List View Builder with data")),
      body: ListView.builder(
        itemCount: dataPeserta.length,
        // reverse: true,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Center(
                  child: Text(
                    dataPeserta[index],
                    style: TextStyle(fontSize: 24, color: Colors.white),
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
