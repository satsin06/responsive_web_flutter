import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:test_task/presentation/shared/constants/constant_function.dart';
import 'package:test_task/presentation/shared/constants/string.dart';

import '../../../controller/tab_controller.dart';
import '../../../model/tab_model.dart';
import '../../shared/constants/app_colors.dart';

class TabbarWebScreen extends StatelessWidget {
  const TabbarWebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabBarController = Provider.of<TabBarController>(context);

    final myModel = dummyData[tabBarController.selectedTabIndex];
    return Stack(
      children: [
        Column(
          children: [
            (0.04 * deviceHeight!).ph,
            Text(
              myModel.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
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
                      .copyWith(color: bodyNumColor),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(myModel.text1),
                ),
                SvgPicture.asset(myModel.image1, height: 0.15 * deviceHeight!),
                SizedBox(
                  width: deviceWidth! * 0.1,
                  child: Container(),
                )
              ],
            ),
            (0.1 * deviceHeight!).ph,
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [bodyMidCol1, bodyMidCol2],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(deviceHeight! * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset(myModel.image2),
                    (0.1 * deviceWidth!).pw,
                    Text(
                      "2.",
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(color: bodyNumColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text(myModel.text2),
                    ),
                  ],
                ),
              ),
            ),
            (0.1 * deviceHeight!).ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "3.",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: bodyNumColor),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(myModel.text3),
                ),
                SvgPicture.asset(myModel.image3),
              ],
            ),
          ],
        ),
        Positioned(top: 0.3 * deviceHeight!, left: 0.4 * deviceWidth!, child: SvgPicture.asset(arrow1, height: 0.2 * deviceHeight!, fit: BoxFit.contain, )),
        Positioned(top: 0.6 * deviceHeight!, right: 0.4 * deviceWidth!, child: SvgPicture.asset(arrow2, height: 0.2 * deviceHeight!, fit: BoxFit.contain, )),
      ],
    );
  }
}
