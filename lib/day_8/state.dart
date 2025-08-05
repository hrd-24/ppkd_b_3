import 'package:flutter/material.dart';

class Day8State extends StatefulWidget {
  const Day8State({super.key});

  @override
  State<Day8State> createState() => _Day8StateState();
}

class _Day8StateState extends State<Day8State> {
  int counter = 0;
  String name = "Ciluk BAA!!!!!!!!!!!!!";
  bool showName = true;
  @override
  Widget build(BuildContext context) {
    print("Ulang");
    return Scaffold(
      appBar: AppBar(title: Text("Day 8 State")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  setState(() {});
                  counter++;
                  print(counter);
                },
                child: Text("Tambah"),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(counter.toString(), style: TextStyle(fontSize: 40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {});
                  counter--;
                  print(counter);
                },
                icon: Icon(Icons.minimize),
              ),
              SizedBox(width: 20),

              IconButton(
                onPressed: () {
                  setState(() {});
                  counter++;
                  print(counter);
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              setState(() {});
              showName = !showName;
              print("showName");
              print(showName);
            },
            child: Text(showName ? "Sembunyikan" : "Tampilkan"),
          ),
          showName ? Text(name, style: TextStyle(fontSize: 40)) : SizedBox(),
        ],
      ),
    );
  }
}
