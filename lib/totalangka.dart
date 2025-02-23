import 'package:flutter/material.dart';
import 'customappbar.dart';
import 'customdrawer.dart';

class SumTotalScreen extends StatefulWidget {
  @override
  _SumTotalScreenState createState() => _SumTotalScreenState();
}

class _SumTotalScreenState extends State<SumTotalScreen> {
  final TextEditingController numbersController = TextEditingController();
  int total = 0;

  void calculateTotal() {
    setState(() {
      total = numbersController.text
          .split(',')
          .map(int.parse)
          .reduce((a, b) => a + b);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "MayAPP"),
      drawer: CustomDrawer(),
      // Kerangka
      //body: Padding(
      //   padding: EdgeInsets.all(16.0),
      //   child: Column(
      //     children: [
      //       TextField(
      //           controller: numbersController,
      //           decoration: InputDecoration(
      //               labelText: "Masukkan angka (pisahkan dengan koma)")),
      //       SizedBox(height: 20),
      //       ElevatedButton(
      //           onPressed: calculateTotal, child: Text("Hitung Total")),
      //       SizedBox(height: 20),
      //       Text("Total: $total"),
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
                      "SUMMARIZE",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: numbersController,
                      decoration: InputDecoration(
                        labelText: "Masukkan angka (pisahkan dengan koma)",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(Icons.numbers),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Tombol operasi

            ElevatedButton(
              onPressed: calculateTotal,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                backgroundColor: const Color.fromARGB(255, 84, 24, 92),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: Text(
                "Total Result",
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
              "Hasil",
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
                        "$total",
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
