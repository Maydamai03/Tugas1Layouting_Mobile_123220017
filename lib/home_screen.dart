import 'package:flutter/material.dart';
import 'login_screen.dart'; // Impor file login_screen.dart
import 'aritmatika.dart';
import 'tipeangka.dart';
import 'totalangka.dart';
import 'profil.dart';

class HomeScreen extends StatelessWidget {
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
          color: const Color.fromARGB(
              255, 0, 0, 0), // Ubah warna background drawer
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: NetworkImage(
          //         "https://images.unsplash.com/photo-1558350283-8269d86681f2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          //     fit: BoxFit.cover, // Menyesuaikan ukuran gambar dengan layar
          //   ),
          // ),
          child: ListView(
            children: [
              DrawerHeader(
                // decoration: BoxDecoration(color: Colors.black),
                // decoration: BoxDecoration(
                //     color: Colors.transparent), // Agar background tetap gambar
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1635776062127-d379bfcba9f8?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                    fit:
                        BoxFit.cover, // Menyesuaikan ukuran gambar dengan layar
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Mulai dari atas
        children: [
          SizedBox(height: 50), // Memberi jarak dari atas
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Gambar latar belakang
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20), // Atur margin kiri dan kanan
                  child: Container(
                    width: double
                        .infinity, // Agar mengikuti lebar parent dengan margin
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1558350283-8269d86681f2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20), // Atur margin kiri dan kanan
                  child: Container(
                    width: double
                        .infinity, // Agar mengikuti lebar parent dengan margin
                    height: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black
                          .withOpacity(0.5), // Background transparan
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "WELCOME, to OUR DASHBOARD",
                      style: TextStyle(
                        color: const Color.fromARGB(
                            255, 255, 255, 255), // Warna teks putih
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                // Teks di atas gambar
              ],
            ),
          ),
          SizedBox(height: 50), // Jarak sebelum garis
          Divider(
            color: Colors.grey, // Warna garis
            thickness: 1.5, // Ketebalan garis
            indent: 50, // Jarak dari kiri
            endIndent: 50, // Jarak dari kanan
          ),
          SizedBox(height: 20), // Jarak setelah garis
        ],
      ),
    );
  }
}
