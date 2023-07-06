import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:test_task/presentation/shared/constants/constant_function.dart';
import 'package:test_task/presentation/shared/constants/string.dart';

import '../../../controller/tab_controller.dart';
import '../../../model/tab_model.dart';
import '../../shared/constants/app_colors.dart';

class TabbarMobileScreen extends StatelessWidget {
  const TabbarMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabBarController = Provider.of<TabBarController>(context);
    final myModel = dummyData[tabBarController.selectedTabIndex];
    return Column(
      children: [
        (0.04 * deviceHeight!).ph,
        Text(
          myModel.title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: bodyTitleColor),
          textAlign: TextAlign.center,
        ),
        (0.04 * deviceHeight!).ph,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "1.",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: bodyNumColor, fontSize: 100),
            ),
            Column(
              children: [
                SvgPicture.asset(myModel.image1, height: 0.15 * deviceHeight!),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(myModel.text1),
                ),
              ],
            ),
          ],
        ),
        (0.05 * deviceHeight!).ph,
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [bodyMidCol1, bodyMidCol2],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: deviceHeight! * 0.05, left: deviceHeight! * 0.05, bottom: deviceHeight! * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "2.",
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(color: bodyNumColor, fontSize: 100),
                    ),
                    (deviceWidth! * 0.1).pw,
                    SizedBox(width: deviceWidth! * 0.5, child: Text(myModel.text2)),
                  ],
                ),
                SvgPicture.asset(myModel.image2),
              ],
            ),
          ),
        ),
        (0.05 * deviceHeight!).ph,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "3.",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: bodyNumColor, fontSize: 100),
            ),
            (deviceWidth! * 0.1).pw,
            SizedBox(width: deviceWidth! * 0.5, child: Text(myModel.text3)),
          ],
        ),
            SvgPicture.asset(myModel.image3),
      ],
    );
  }
}


