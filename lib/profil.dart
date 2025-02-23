import 'package:flutter/material.dart';
import 'customdrawer.dart';
import 'customappbar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "MayAPP"),
      drawer: CustomDrawer(),
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
