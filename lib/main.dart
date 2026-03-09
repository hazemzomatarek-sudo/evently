
import 'package:evently/ui/screens/login/login_screen.dart';
import 'package:evently/ui/screens/navigation/navigation_screen.dart';
import 'package:evently/ui/screens/register/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationScreen(),
    );
  }
}

