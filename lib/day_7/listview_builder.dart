import 'package:flutter/material.dart';

class Day7ListViewBuilder extends StatelessWidget {
  const Day7ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 7 List View Builder")),
      body: ListView.builder(
        itemCount: 200,
        reverse: true,
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
                    "Item ${index + 1}",
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
