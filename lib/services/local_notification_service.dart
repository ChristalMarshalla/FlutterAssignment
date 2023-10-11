import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:rxdart/rxdart.dart';
import 'package:timezone/timezone.dart';

import 'package:flutter/material.dart';

class LocalNotificationService {
  LocalNotificationService();

  final _localNotificationService = FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    const AndroidInitializationSettings androidInitializationSettings = 
    AndroidInitializationSettings('@drawable/ic_stat_android');
    final InitializationSettings settings = const InitializationSettings(android: androidInitializationSettings);

    await _localNotificationService.initialize(settings, onSelectNotification: onSelectNotification);
    }
    void onselectNotification(String payload){
      print(payload);
    }

  
}