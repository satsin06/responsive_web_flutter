import 'package:flutter/material.dart';
import 'package:test_task/presentation/screens/mobile_layout/custom_mobile_appbar.dart';
import 'package:test_task/presentation/screens/mobile_layout/custom_mobile_bottombar.dart';


class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomMobileAppBar(),
            CustomMobileBottomBar(),
          ],
        ),
      ],
    );
  }
}
