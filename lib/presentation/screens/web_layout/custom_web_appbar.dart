import 'package:flutter/material.dart';
import 'package:test_task/presentation/shared/constants/string.dart';

import '../../shared/constants/app_colors.dart';

class CustomWebAppbar extends StatefulWidget {
  final bool isButtonVisible;
  const CustomWebAppbar({super.key, required this.isButtonVisible});

  @override
  State<CustomWebAppbar> createState() => _CustomWebAppbarState();
}

class _CustomWebAppbarState extends State<CustomWebAppbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Stack(
        children: [
          SizedBox(height: 50, child: Container()),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Visibility(
                        visible: widget.isButtonVisible,
                        child: const Text(nowClick)),
                    ),
                    Visibility(
                      visible: widget.isButtonVisible,
                      child: SizedBox(
                        width: deviceWidth! * 0.15,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              side: const BorderSide(color: buttonBorderColor, width: 2),
                            ),
                            child: Text(bannerButtonText, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: greenColor),),
                          ),
                      ),),
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