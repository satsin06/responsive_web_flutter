import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_task/presentation/shared/constants/constant_function.dart';

import '../../shared/constants/app_colors.dart';
import '../../shared/constants/string.dart';

class BannerWeb extends StatefulWidget {
  const BannerWeb({super.key});

  @override
  State<BannerWeb> createState() => _BannerWebState();
}

class _BannerWebState extends State<BannerWeb> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(deviceWidth!, deviceHeight! * 0.5),
      painter: MyCustomPainter(),
      child: SizedBox(
        height: deviceHeight! * 0.5,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (deviceWidth! * 0.3).pw,
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
                        child: Text(
                          bannerButtonText,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: backgroundColor),
                        ),
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
              const Spacer(),
            ]),
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final leftPath = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height * 0.8)
      ..lineTo(size.width, size.height * 0.9)
      ..lineTo(size.width, 0)
      ..close();

    const gradient = LinearGradient(
      colors: [bodyMidCol2, bodyMidCol1],
    );

    final paint = Paint()..shader = gradient.createShader(leftPath.getBounds());

    canvas.drawPath(leftPath, paint);
    // Custom painting logic here
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false; // Only repaint if necessary
  }
}
