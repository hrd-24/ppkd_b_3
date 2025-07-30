import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PPKD Batch 3"),
        backgroundColor: Colors.amber,
        actions: [Icon(Icons.favorite), Icon(Icons.message)],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      // backgroundColor: Colors.black,
      body: Column(
        //MainAxis center untuk posisi ketengah
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Saya"),
          Text("Andrea"),
          Text("Surya"),
          Text("Habibie"),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Text("Nama :"), Text("Andrea")],
          ),
        ],
      ),
    );
  }
}
