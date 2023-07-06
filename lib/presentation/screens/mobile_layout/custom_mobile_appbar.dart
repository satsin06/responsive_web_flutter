import 'package:flutter/material.dart';

import '../../shared/constants/app_colors.dart';
import '../../shared/constants/string.dart';

class CustomMobileAppBar extends StatelessWidget {
  const CustomMobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Stack(
        children: [
          SizedBox(height: 60, child: Container()),
          Positioned.fill(
            child: PhysicalModel(
              color: Colors.transparent,
              elevation: 6,
              shadowColor: appBarShadow,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
              clipBehavior: Clip.antiAlias,
              child: Container(
                decoration: const BoxDecoration(
                  color: backgroundColor,
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: null,
                        child: Text(login,
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: greenColor))),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}