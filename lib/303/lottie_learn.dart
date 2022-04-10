import 'package:flutter/material.dart';
import '../product/constant/duration_items.dart';
import '../product/constant/lottie_items.dart';
import '../product/navigator/navigator_routes.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:uikit/uikit.dart';

import '../product/global/theme_notifer.dart';

class LottieLearn extends StatefulWidget {
  const LottieLearn({Key? key}) : super(key: key);

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

// https://assets3.lottiefiles.com/packages/lf20_ydo1amjm.json
class _LottieLearnState extends State<LottieLearn> with TickerProviderStateMixin {
  late AnimationController controller;
  bool isLight = false;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: DurationItems.durationNormal());
    navigateToHome();
  }

  Future<void> navigateToHome() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.of(context).pushReplacementNamed(NavigateRoutes.home.withParaf);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () async {
                await controller.animateTo(isLight ? 0.5 : 1);
                // controller.animateTo(0.5);
                isLight = !isLight;
                Future.microtask(() {
                  context.read<ThemeNotifer>().changeTheme();
                });
              },
              child: Lottie.asset(LottieItems.themeChange.lottiePath, repeat: false, controller: controller))
        ],
      ),
      body: const LoadingLottie(),
    );
  }
}
