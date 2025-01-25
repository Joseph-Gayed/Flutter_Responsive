import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'example_1/responsive_widget_ex1.dart';
import 'example_1/mobile_layout.dart';
import 'example_1/web_layout.dart';
import 'example_2/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior: CustomScrollBehavior(),
        title: 'Tour App - Responsive',
        theme: ThemeData(colorSchemeSeed: Colors.green),
        //example 1
        // home: const ResponsiveWidgetEx1(
        //     mobile: MobileLayout(), desktop: WebLayout()),

    //example 2
        home: const HomePage(),
      );
}

class CustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
