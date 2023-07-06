import 'package:flutter/material.dart';
import 'package:test_task/presentation/screens/mobile_layout/mobile_view.dart';
import 'package:test_task/presentation/screens/web_layout/web_view.dart';
import 'package:test_task/presentation/shared/layout/switch_layout.dart';

import '../shared/constants/string.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    deviceHeight = size.height;
    deviceWidth = size.width;
    return const Scaffold(
        body: SwitchLayout(mobileBody: MobileView(), desktopBody: WebView()));
  }
}
