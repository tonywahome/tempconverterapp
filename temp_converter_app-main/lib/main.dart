import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const TemperatureConverterApp());
}

class TemperatureConverterApp extends StatelessWidget {
  const TemperatureConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed:
            Colors.black26, // Material 3 - uses blue as primary color
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 33, 243, 54),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Temperature Converter')),
        body: SafeArea(child: HomeScreen()),
      ),
    );
  }
}
