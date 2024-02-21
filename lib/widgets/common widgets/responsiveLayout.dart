import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

 const ResponsiveLayout({
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    double deviceSize = MediaQuery.of(context).size.width;  
    return LayoutBuilder(
      builder: (context, constraints) {
        if (deviceSize < 600) {
          // Mobile layout
          return mobile;
        } else if (deviceSize < 1200) {
          // Tablet layout
          return tablet;
        } else {
          // Desktop layout
          return desktop;
        }
      },
    );
  }
}