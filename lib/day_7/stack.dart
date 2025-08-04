import 'package:flutter/material.dart';

class Day7Stack extends StatelessWidget {
  const Day7Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 7 Stack")),
      body: Column(
        children: [
          //Stack 1
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
              Container(
                height: 175,
                width: double.infinity,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow,
                ),
              ),
              Container(
                height: 125,
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          //Stack 2
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 250,
                width: 250,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
              Container(
                height: 175,
                width: 175,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow,
                ),
                child: Text("TUJUANTUJUANTUJUANTUJUANTUJUANTUJUAN"),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 100,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: Icon(Icons.edit, size: 50, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
