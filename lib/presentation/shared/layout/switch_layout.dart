import 'package:flutter/material.dart';

import '../constants/string.dart';

class SwitchLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const SwitchLayout({super.key, required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}