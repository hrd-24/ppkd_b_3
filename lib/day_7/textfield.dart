import 'package:flutter/material.dart';

class Day7TextField extends StatelessWidget {
  const Day7TextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 7 Grid View")),
      body: Column(
        children: [
          Row(children: [Text("Nama")]),
          TextField(decoration: InputDecoration(border: OutlineInputBorder())),
          Row(children: [Text("Jurusan")]),
          TextFormField(),
          ListTile(
            title: Text("Hobi"),
            subtitle: Text("Pilih hobi anda"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Action when tapped
            },
          ),
        ],
      ),
    );
  }
}
