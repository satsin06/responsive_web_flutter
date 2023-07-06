import 'package:flutter/material.dart';
import 'package:test_task/presentation/screens/mobile_layout/banner_mobile.dart';
import 'package:test_task/presentation/screens/mobile_layout/custom_mobile_appbar.dart';
import 'package:test_task/presentation/screens/mobile_layout/custom_mobile_bottombar.dart';
import 'package:test_task/presentation/screens/mobile_layout/tabbar_mobile_screen.dart';
import 'package:test_task/presentation/screens/web_layout/tabbar_web.dart';
import 'package:test_task/presentation/shared/constants/constant_function.dart';
import 'package:test_task/presentation/shared/constants/string.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Column(
              children: [
                const BannerMobile(),
                (0.1 * deviceHeight!).ph,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      24.pw,
                      const TabbarWeb(),
                      24.pw
                    ],
                  ),
                ),
                const TabbarMobileScreen()
              ],
            ),
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
