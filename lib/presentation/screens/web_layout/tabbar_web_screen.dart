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
    return SizedBox(
        height: deviceHeight! * 2,
        child: Column(
          children: [
            (0.04 * deviceHeight!).ph,
            Text(myModel.title,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: bodyTitleColor), textAlign: TextAlign.center,),
            SvgPicture.asset(myModel.image1),
            Text(myModel.text1),
            SvgPicture.asset(myModel.image2),
            Text(myModel.text2),
            SvgPicture.asset(myModel.image3),
            Text(myModel.text3),
          ],
        ));
  }
}
