import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_task/presentation/shared/constants/constant_function.dart';

import '../../shared/constants/app_colors.dart';
import '../../shared/constants/string.dart';

class BannerWeb extends StatelessWidget {
  const BannerWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: deviceHeight! * 0.5,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffEBF4FF),
              Color(0xffE6FFFA),
            ]),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                (deviceWidth! * 0.2).pw,
                SizedBox(
                  height: deviceHeight! * 0.3,
                  width: deviceHeight! * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(bannerText,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                  color: bannerTextColor,
                                  fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start),
                      Container(
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
                          child: Text(bannerButtonText, style: Theme.of(context).textTheme.bodySmall!.copyWith(color: backgroundColor),),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: backgroundColor),
                    height: deviceHeight! * 0.3,
                    width: deviceWidth! * 0.3,
                    child: SvgPicture.asset(bannerMid)),
                SizedBox(
                  height: deviceHeight! * 0.3,
                  width: deviceWidth! * 0.2,
                  child: Container()
                )
              ]),
        );
  }
}