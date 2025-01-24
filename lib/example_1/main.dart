import 'package:flutter/material.dart';
import 'package:responsive_demo/example_1/web_layout.dart';

import 'ResponsiveContainer.dart';
import 'mobile_layout.dart';

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
