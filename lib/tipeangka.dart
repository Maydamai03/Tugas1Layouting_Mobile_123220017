import 'package:flutter/material.dart';
import 'customappbar.dart';
import 'customdrawer.dart';

class NumberTypeScreen extends StatefulWidget {
  @override
  _NumberTypeScreenState createState() => _NumberTypeScreenState();
}

class _NumberTypeScreenState extends State<NumberTypeScreen> {
  final TextEditingController numController = TextEditingController();
  String result = "";

  void checkNumber() {
    setState(() {
      int number = int.parse(numController.text);
      result = (number % 2 == 0) ? "Genap" : "Ganjil";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "MayAPP"),
      drawer: CustomDrawer(),
      //Kerangka
      //body: Padding(
      //   padding: EdgeInsets.all(16.0),
      //   child: Column(
      //     children: [
      //       TextField(
      //           controller: numController,
      //           decoration: InputDecoration(labelText: "Masukkan Bilangan"),
      //           keyboardType: TextInputType.number),
      //       SizedBox(height: 20),
      //       ElevatedButton(onPressed: checkNumber, child: Text("Cek")),
      //       SizedBox(height: 20),
      //       Text("Hasil: $result"),
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Card untuk Input
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Tipe Bilangan",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: numController,
                      decoration: InputDecoration(
                        labelText: "Masukkan Bilangan",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(Icons.numbers),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Tombol operasi

            ElevatedButton(
              onPressed: checkNumber,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                backgroundColor: const Color.fromARGB(255, 84, 24, 92),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: Text(
                "Result",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  // fontFamily:
                  //     "Roboto",
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              "Tipe Bilangan",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Card untuk Hasil Output
            SizedBox(
              width: 300,
              child: Card(
                color: const Color.fromARGB(255, 50, 2, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "$result",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
