import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ppkd_b_3/day_9/tugas_5_raul.dart';

class Day9Form extends StatefulWidget {
  const Day9Form({super.key});

  @override
  State<Day9Form> createState() => _Day9FormState();
}

class _Day9FormState extends State<Day9Form> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 9 Text Rich")),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 12,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hint: Text("Masukkan Email"),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email tidak boleh kosong";
                    }
                    if (!value.contains("@")) {
                      return "Email tidak valid";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hint: Text("Masukkan Password"),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hint: Text("Masukkan Confirm Password"),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Confirm Password tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    //Error dan sukses menggunakan ScaffoldMessenger dan formKey
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Form Validasi Berhasil")),
                      );
                    }

                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Email anda tidak sesuai"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Silakan Masukkan email yang valid"),
                              SizedBox(height: 20),
                              // Image.asset(
                              //   'assets/images/rendang.jpeg',
                              //   width: 90,
                              //   height: 100,
                              //   fit: BoxFit.cover,
                              // ),
                              Lottie.asset(
                                'assets/images/animations/success.json',
                                width: 90,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              child: Text("Batal"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: Text("Ok, Siap"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Submit"),
                ),

                Tugas5Flutter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
