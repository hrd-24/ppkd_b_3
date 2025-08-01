import 'package:flutter/material.dart';

class Day6Expanded extends StatelessWidget {
  const Day6Expanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Day 6 Expanded")),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(child: Text("1.", style: TextStyle(fontSize: 32))),
                Expanded(flex: 5, child: Container(color: Colors.blue)),
              ],
            ),
          ),
          Expanded(flex: 3, child: Container(color: Colors.red)),
          Expanded(flex: 2, child: Container(color: Colors.white)),
          Expanded(child: Container(color: Colors.blue)),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.red)),
                Expanded(child: Container(color: Colors.white)),
                Expanded(child: Container(color: Colors.yellow)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
