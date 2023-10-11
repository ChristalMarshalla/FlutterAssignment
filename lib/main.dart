import 'package:flutter/material.dart';
import 'package:push_notifications/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Notification',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: const Home(),
    );
  }
}
