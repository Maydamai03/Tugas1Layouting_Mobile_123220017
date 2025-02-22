import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'aritmatika.dart';
import 'tipeangka.dart';
import 'totalangka.dart';

class ProfileScreen extends StatelessWidget {
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Card 1: Foto, Nama, NIM
            ProfileCard(
              imagePath: "assets/images/may.jpg",
              name: "Jagad Damai",
              nim: "123220017",
            ),

            SizedBox(height: 20),
            // Card 2: Informasi tambahan
            AdditionalInfoCard(
              address: "Jl. Kledokan No.3 , Yogyakarta",
              hobby: "MOBEL LEJEN FOR LAIP",
              study: "Informatika",
              profession: "Student Arek Yapping",
              phoneNumber: "+62 895-0652-8538",
            ),
          ],
        ),
      ),
    );
  }
}

// Card untuk Foto, Nama, dan NIM
class ProfileCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String nim;

  ProfileCard({
    required this.imagePath,
    required this.name,
    required this.nim,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(imagePath),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "NIM: $nim",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Card untuk Informasi Tambahan
class AdditionalInfoCard extends StatelessWidget {
  final String address;
  final String hobby;
  final String study;
  final String profession;
  final String phoneNumber;

  AdditionalInfoCard({
    required this.address,
    required this.hobby,
    required this.study,
    required this.profession,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Informasi Lanjutan",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Divider(color: Colors.black54),
            InfoRow(title: "Alamat", value: address),
            InfoRow(title: "Hobi", value: hobby),
            InfoRow(title: "Studi", value: study),
            InfoRow(title: "Profesi", value: profession),
            InfoRow(title: "No HP", value: phoneNumber),
          ],
        ),
      ),
    );
  }
}

// Widget untuk menampilkan informasi dalam satu baris
class InfoRow extends StatelessWidget {
  final String title;
  final String value;

  InfoRow({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              "$title:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
