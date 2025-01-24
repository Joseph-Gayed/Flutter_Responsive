import 'package:flutter/material.dart';
import 'package:responsive_demo/ResponsiveContainer.dart';
import 'package:responsive_demo/mobile_layout.dart';
import 'package:responsive_demo/web_layout.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(
        body: ResponsiveLayout(
            mobileLayout: MobileLayout(), webLayout: WebLayout()),
      ),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
