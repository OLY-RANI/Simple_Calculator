
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main(){
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: const HomeScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
        ),
        inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey)

            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey)

            ),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red)

            ),
            contentPadding: EdgeInsets.all(16)
        )
      ),
    );
  }
}
