import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/constants/app_colors.dart';
import '../../shared/constants/string.dart';

class BannerMobile extends StatefulWidget {
  const BannerMobile({super.key});

  @override
  State<BannerMobile> createState() => _BannerMobileState();
}

class _BannerMobileState extends State<BannerMobile> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(deviceWidth!, deviceHeight!),
      painter: const MyCustomPainter(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(bannerText,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: bannerTextColor, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center),
          SvgPicture.asset(bannerMid, height: deviceHeight! * 0.7, fit: BoxFit.fitHeight,),
        ],
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  const MyCustomPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPaint(Paint()..color = Colors.white);

    Path bezierPath = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height * 0.9)
      ..quadraticBezierTo(
        size.width * 0.25,
        size.height,
        size.width * 0.5,
        size.height * 0.9,
      )
      ..quadraticBezierTo(
        size.width * 0.75,
        size.height * 0.8,
        size.width,
        size.height * 0.9,
      )
      ..lineTo(size.width, 0)
      ..close();

    final bezierPaint = Paint()
      ..shader =
          const LinearGradient(colors: [bodyMidCol2, bodyMidCol1])
              .createShader(Offset(0, size.height * 0.8) & size);

    canvas.drawPath(bezierPath, bezierPaint);
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) => false;
}
