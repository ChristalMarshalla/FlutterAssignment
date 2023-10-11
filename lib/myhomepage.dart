import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Notification Demo'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: SizedBox(
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Demo to use flutter local notification',
                    style: TextStyle(fontSize: 20),
                  ),
                  ElevatedButton(
                    onPressed: () async {},
                    child: const Text('Local Notification'),
                  ),
                  ElevatedButton(
                    onPressed: () async {},
                    child: const Text('Schelduled Notification'),
                  ),
                  ElevatedButton(
                    onPressed: () async {},
                    child: const Text('Payload Notification'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
