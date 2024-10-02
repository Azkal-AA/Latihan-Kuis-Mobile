import 'package:flutter/material.dart';
import 'package:kuis/detail.dart';
import 'package:kuis/dummy-fakultas.dart';

class HomePage extends StatelessWidget {
  final String username;
  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halo, $username'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Card untuk UPN Jogja
            Card(
              color: Colors.green,
              child: ListTile(
                title: Text(
                  'Sudahkah kamu mengenal UPN Jogja?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                    'UPN Jogja adalah kampus favorit di DIY lho!\nKenalan lebih jauh yuk!'),
                trailing: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Detail();
                    }));
                  },
                  child: Text('Kenalan lebih jauh yuk!'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'List Fakultas UPNYK',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // List fakultas menggunakan data dummy
            Expanded(
              child: ListView.builder(
                itemCount: facultyList.length,
                itemBuilder: (context, index) {
                  final faculty =
                      facultyList[index]; // Ambil data dari facultyList
                  return Card(
                    color: Colors.yellowAccent,
                    child: Column(
                      children: [
                        Image.network(faculty
                            .imageUrls[2]), // Ambil imageUrls dari faculty
                        Text(
                          faculty.name, // Ambil name dari faculty
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('${faculty.numberOfMajors} jurusan'),
                        Text('${faculty.numberOfStudents} mahasiswa')
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
