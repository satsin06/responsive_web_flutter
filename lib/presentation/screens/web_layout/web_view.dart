import 'package:flutter/material.dart';
import 'package:test_task/presentation/screens/web_layout/banner_web.dart';
import 'package:test_task/presentation/screens/web_layout/custom_web_appbar.dart';
import 'package:test_task/presentation/shared/constants/constant_function.dart';


class WebView extends StatefulWidget {
  const WebView({Key? key}) : super(key: key);

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late ScrollController _scrollController;
  bool _isButtonVisible = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    setState(() {
      _isButtonVisible =
          _scrollController.offset >= 0.3 * MediaQuery.of(context).size.height;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              const BannerWeb(),
              200.ph,
              Container(
                height: 1000,
                color: Colors.red,),
            ],
          ),
        ),
        CustomWebAppbar(isButtonVisible: _isButtonVisible,)
      ],
    );
  }
}
