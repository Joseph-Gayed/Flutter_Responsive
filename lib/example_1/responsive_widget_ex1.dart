import 'package:flutter/material.dart';

import 'dimens.dart';

class ResponsiveWidgetEx1 extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveWidgetEx1(
      {super.key, required this.mobile, this.tablet, required this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= MOBILE_WIDTH) {
        return mobile;
      } else if (constraints.maxWidth < TABLET_WIDTH) {
        return tablet ?? desktop;
      } else {
        return desktop;
      }
    });
  }
}
