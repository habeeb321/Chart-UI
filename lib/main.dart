import 'package:flutter/material.dart';
import 'package:octohub_assignment/core/constants.dart';
import 'package:octohub_assignment/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: kBlackColor),
          displayMedium: TextStyle(color: kBlackColor),
          bodyMedium: TextStyle(color: kBlackColor),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
