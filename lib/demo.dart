import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotificationPage(),
    );
  }
}

class NotificationPage extends StatefulWidget {
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: AndroidInitializationSettings(
          'app_icon'), // Replace with your app's Android icon
    );

    // flutterLocalNotificationsPlugin.initialize(
    //   initializationSettings,
    //   onSelectNotification: (String? payload) async {
    //     // Handle notification tap
    //     print("Notification tapped with payload: $payload");
    //   },
    // );
    // initializationSettings.android.
  }

  Future<void> showNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'your_channel_id', // Replace with your own channel ID
      'your_channel_name', // Replace with your own channel name
      importance: Importance.high, // Set notification importance
      priority: Priority.high, // Set notification priority
      ticker: 'ticker',
      styleInformation: BigTextStyleInformation(''),
    );

    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      0, // Notification ID
      'Notification Title',
      'Notification Body',
      platformChannelSpecifics,
      payload: 'Custom Payload',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Notifications Example (Android)'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showNotification(),
          child: const Text('Show Notification'),
        ),
      ),
    );
  }
}
