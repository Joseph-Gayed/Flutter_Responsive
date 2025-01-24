import 'package:flutter/material.dart';

import 'dimens.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget webLayout;

  const ResponsiveLayout(
      {super.key, required this.mobileLayout, required this.webLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < MOBILE_WIDTH) {
        return mobileLayout;
      } else {
        return webLayout;
      }
    });
  }
}
