import 'package:flutter/material.dart';
import 'package:kuis/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kuis",
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        primarySwatch: Colors.green,
        // useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
