import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
          color: Colors.black,
        )),
      ),
      home: const HomePage(),
    );
  }
}
