import 'package:flutter/material.dart';

class Day6Container extends StatelessWidget {
  const Day6Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 6")),

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(16),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
              border: Border.all(color: Colors.red, width: 10),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              "HARI INI LEBIH INDAH",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),

          // Container(
          //   margin: EdgeInsets.all(8),
          //   padding: EdgeInsets.all(16),
          //   height: 100,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     color: Colors.yellow,
          //     border: Border.all(color: Colors.blue, width: 10),
          //     borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(20),
          //       bottomRight: Radius.circular(20),
          //     ),
          //   ),
          //   child: Text(
          //     "MICHAEL",
          //     style: TextStyle(fontSize: 40, color: Colors.black),
          //   ),
          // ),
          // Container(
          //   margin: EdgeInsets.all(8),
          //   padding: EdgeInsets.all(16),
          //   height: 250,
          //   alignment: Alignment.center,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     color: Colors.yellow,
          //     border: Border.all(color: Colors.blue, width: 10),
          //     // borderRadius: BorderRadius.only(
          //     //   topLeft: Radius.circular(20),
          //     //   bottomRight: Radius.circular(20),
          //     // ),
          //     shape: BoxShape.circle,
          //     gradient: LinearGradient(
          //       colors: [Colors.red, Colors.yellow, Colors.green],
          //     ),
          //     boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)],
          //   ),
          //   child: Container(
          //     height: 125,
          //     alignment: Alignment.center,
          //     decoration: BoxDecoration(
          //       color: Colors.yellow,
          //       border: Border.all(color: Colors.blue, width: 10),
          //       // borderRadius: BorderRadius.only(
          //       //   topLeft: Radius.circular(20),
          //       //   bottomRight: Radius.circular(20),
          //       // ),
          //       shape: BoxShape.circle,
          //       gradient: LinearGradient(
          //         colors: [Colors.red, Colors.yellow, Colors.green],
          //       ),
          //       boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)],
          //     ),
          //     child: Text(
          //       "MARCO",
          //       style: TextStyle(fontSize: 20, color: Colors.black),
          //     ),
          //   ),
          // ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/rendang.jpeg"),
              ),
            ),
          ),
          Image.asset("assets/images/rendang.jpeg", height: 200),
        ],
      ),
    );
  }
}
