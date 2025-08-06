import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Day9TextRich extends StatelessWidget {
  const Day9TextRich({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 9 Text Rich")),
      body: Column(
        children: [
          Text.rich(
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print("Text Rich Tapped");
                },
              text: "Ini adalah Saya",
              style: TextStyle(fontSize: 28, color: Colors.red),
              children: [
                TextSpan(
                  text: "Ini adalah Kuning",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: "Ini adalah Kecil",
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
