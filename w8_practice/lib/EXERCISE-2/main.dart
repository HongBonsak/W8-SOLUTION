import 'package:flutter/material.dart';

import 'ui/screens/temperature_screen.dart';
import 'ui/screens/welcome_screen.dart';

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  // State lives in the parent: which screen is visible?
  bool _showWelcome = true;

  void _onStart() {
    setState(() {
      _showWelcome = false;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff16C062),
                Color(0xff00BCDC),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // Conditional rendering
          child: _showWelcome
              ? WelcomeScreen(onStart: _onStart)
              : TemperatureScreen(),
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}
