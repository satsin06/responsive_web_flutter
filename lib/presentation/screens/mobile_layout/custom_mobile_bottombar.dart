import 'package:flutter/material.dart';

import '../../shared/constants/app_colors.dart';
import '../../shared/constants/string.dart';

class CustomMobileBottomBar extends StatelessWidget {
  const CustomMobileBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0),
      child: Stack(
        children: [
          SizedBox(height: 60, child: Container()),
          Positioned.fill(
            child: PhysicalModel(
              color: Colors.transparent,
              elevation: 6,
              shadowColor: appBarShadow,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8)),
              clipBehavior: Clip.antiAlias,
              child: Container(
                decoration: const BoxDecoration(
                  color: backgroundColor,
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                        width: deviceWidth! * 0.2,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [greenColor, blueColor],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            bannerButtonText,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: backgroundColor),
                          ),
                        ),
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}