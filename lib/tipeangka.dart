import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'aritmatika.dart';
import 'totalangka.dart';
import 'profil.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "MayAPP",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 0, 0, 0),
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: NetworkImage(
          //         "https://images.unsplash.com/photo-1558350283-8269d86681f2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: ListView(
            children: [
              DrawerHeader(
                // decoration: BoxDecoration(color: Colors.black),
                // decoration: BoxDecoration(
                //     color: Colors.transparent),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1635776062127-d379bfcba9f8?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.account_circle, size: 60, color: Colors.white),
                    SizedBox(height: 10),
                    Text(
                      "Jagad Damai\n123220017",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home_filled,
                    color: const Color.fromARGB(255, 255, 255, 255)),
                title: Text("Dashboard", style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.person,
                    color: const Color.fromARGB(255, 255, 255, 255)),
                title: Text("Profil", style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
              ),
              ExpansionTile(
                leading: Icon(Icons.calculate, color: Colors.white),
                title: Text("Calculate", style: TextStyle(color: Colors.white)),
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                children: [
                  ListTile(
                    leading: Icon(Icons.add, color: Colors.white),
                    title: Text("Arithmetic",
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArithmeticScreen()));
                    },
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.format_list_numbered, color: Colors.white),
                    title:
                        Text("Odd Even", style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NumberTypeScreen()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.summarize, color: Colors.white),
                    title: Text("Summarize",
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SumTotalScreen()));
                    },
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.red),
                title: Text("Logout", style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
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
