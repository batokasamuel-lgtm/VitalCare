import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'services/notification_service.dart';
class VitalCareApp extends StatelessWidget { @override Widget build(BuildContext context) { NotificationService().init(); return MaterialApp(title: 'VitalCare', home: HomeScreen()); } }
