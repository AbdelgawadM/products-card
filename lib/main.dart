import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:session_task1/screens/regist_screen.dart';

Future<void> main() async {
  runApp(
    DevicePreview(
      enabled: true, // Set to false to disable it in production
      builder: (context) {
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: RegistScreen(),
    );
  }
}
