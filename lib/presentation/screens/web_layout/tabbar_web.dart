import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controller/tab_controller.dart';
import '../../shared/constants/app_colors.dart';
import '../../shared/constants/string.dart';

class TabbarWeb extends StatefulWidget {
  const TabbarWeb({super.key});

  @override
  State<TabbarWeb> createState() => _TabbarWebState();
}

class _TabbarWebState extends State<TabbarWeb> {

  @override
  Widget build(BuildContext context) {
  final tabBarController = Provider.of<TabBarController>(context);
    final selectedTabIndex = tabBarController.selectedTabIndex;
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedTabIndex == 0 ? selectedTabColor : backgroundColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                  )
                ),
                onPressed: () {
                  setState(() {
                    tabBarController.selectTab(0);
                  });
                },
                child: Text(tab1, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: greenColor)),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedTabIndex == 1 ? selectedTabColor : backgroundColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                  )
                ),
                onPressed: () {
                  setState(() {
                    tabBarController.selectTab(1);
                  });
                },
                child: Text(tab2, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: greenColor)),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedTabIndex == 2 ? selectedTabColor : backgroundColor, shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  )
                ),
                onPressed: () {
                  setState(() {
                    tabBarController.selectTab(2);
                  });
                },
                child: Text(tab3, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: greenColor)),
              ),
            ],
          );
  }
}