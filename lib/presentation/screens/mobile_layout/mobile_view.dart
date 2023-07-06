import 'package:flutter/material.dart';
import 'package:test_task/presentation/screens/mobile_layout/banner_mobile.dart';
import 'package:test_task/presentation/screens/mobile_layout/custom_mobile_appbar.dart';
import 'package:test_task/presentation/screens/mobile_layout/custom_mobile_bottombar.dart';
import 'package:test_task/presentation/shared/constants/constant_function.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              (60).ph,
              const BannerMobile(),
            ],
          ),
        ),
        const Column(
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
