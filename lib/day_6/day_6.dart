import 'package:flutter/material.dart';

class Day6 extends StatelessWidget {
  const Day6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 6")),
      body: Padding(
        //PADDING
        padding: const EdgeInsets.all(24),
        // padding: const EdgeInsets.only(left: 24, top: 50),
        // padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("SIZEDBOX", style: TextStyle(fontSize: 32)),
            //SIZEDBOX HEIGHT
            Text("Day 6", style: TextStyle(fontSize: 32)),
            SizedBox(height: 20),
            Text("Day 7", style: TextStyle(fontSize: 32)),
            SizedBox(height: 20),
            Text("Day 8", style: TextStyle(fontSize: 32)),
            SizedBox(height: 20),
            //SIZEDBOX WIDTH
            Row(
              children: [
                Text("Day 6", style: TextStyle(fontSize: 32)),
                SizedBox(width: 20),
                Text("Day 7", style: TextStyle(fontSize: 32)),
                SizedBox(width: 20),
                Text("Day 8", style: TextStyle(fontSize: 32)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
