import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveLayout(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // WEB Layout
        if (constraints.maxWidth > 900) {
          return webScreenLayout;
        }
        // PHONE Layout
        else {
          return mobileScreenLayout;
        }
      },
    );
  }
}
