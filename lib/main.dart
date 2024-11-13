import 'package:clothes_app/users/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Simulated async initialization function
  Future<bool> initializeApp() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate a delay
    return true; // Indicate successful initialization
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shopping APP Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: FutureBuilder(
          future: initializeApp(),
          builder: (context, dataSnapShot) {
            return LoginScreen();
          }),
    );
  }
}
