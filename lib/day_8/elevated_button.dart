import 'package:flutter/material.dart';

class Day8ElevatedButton extends StatelessWidget {
  const Day8ElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 8 Elevated Button")),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("Test floating");
        },
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: Column(
        children: [
          Text("Ini Elevated Button"),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
            ),
            onPressed: () {
              print("Tekan Aku");
              print("Aku ditekan");
              print("Aku tertekan");
              int uts = 80;
              int uas = 85;
              double kehadiran = 0.75;

              double rataRata = (uts + uas) / 2;
              print(rataRata);

              print("Data Nilai:");
              print("Nilai UTS: $uts");
              print("NIlai UAS: $uas");
              print("Kehadiran: $kehadiran");

              if (rataRata >= 70 &&
                  kehadiran >= 0.75 &&
                  uts >= 60 &&
                  uas >= 60) {
                print("Lulus");
              } else {
                print("Tidak Lulus");
              }
            },
            child: Text("Tekan Aku"),
          ),
          Text("Ini Icon Button"),
          IconButton(
            onPressed: () {
              print("Data Nilai:");
            },
            icon: Icon(Icons.download),
          ),
          Text("Ini Text Button"),
          TextButton(
            onPressed: () {
              print("Tekan Aku");
              print("Aku ditekan");
              print("Aku tertekan");
              int uts = 80;
              int uas = 85;
              double kehadiran = 0.75;

              double rataRata = (uts + uas) / 2;
              print(rataRata);

              print("Data Nilai:");
              print("Nilai UTS: $uts");
              print("NIlai UAS: $uas");
              print("Kehadiran: $kehadiran");

              if (rataRata >= 70 &&
                  kehadiran >= 0.75 &&
                  uts >= 60 &&
                  uas >= 60) {
                print("Lulus");
              } else {
                print("Tidak Lulus");
              }
            },
            child: Text("Tekan Aku"),
          ),
          Text("Ini InkWell"),
          InkWell(
            onTap: () {
              print("Data Nilai:");
            },
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset("assets/images/rendang.jpeg"),
            ),
          ),
          Text("Ini GestureDetector"),
          GestureDetector(
            onDoubleTap: () {
              print("Double Kill");
            },
            onTap: () {
              print("Single Kill");
            },
            onLongPress: () {
              print("Lama-lama Kill");
            },
            child: Container(
              color: Colors.blue,
              height: 48,
              width: double.infinity,
              child: Text("Tombol lucu"),
            ),
          ),
        ],
      ),
    );
  }
}
