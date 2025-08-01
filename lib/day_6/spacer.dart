import 'package:flutter/material.dart';

class Day6Spacer extends StatelessWidget {
  const Day6Spacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 6 Spacer")),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/images/rendang.jpeg", height: 50),
              Text("Rendang", style: TextStyle(fontSize: 24)),
              Spacer(),
              Icon(Icons.more_vert),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Image.asset("assets/images/rendang.jpeg", height: 50),
              Text("Rendang", style: TextStyle(fontSize: 24)),
              Spacer(),
              Icon(Icons.more_vert),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Image.asset("assets/images/rendang.jpeg", height: 50),
              Text("Rendang", style: TextStyle(fontSize: 24)),
              Spacer(),
              Icon(Icons.more_vert),
            ],
          ),
        ],
      ),
    );
  }
}
