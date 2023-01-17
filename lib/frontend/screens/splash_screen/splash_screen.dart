
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wuri/frontend/routes/routes.gr.dart';
import 'package:wuri/get_locator.dart';

import '../../../gen/assets.gen.dart';
import '../../styles/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    _moveToNextScreen();
    super.initState();
  }

  void _moveToNextScreen() async {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      getIt<AppRouter>().replaceAll([const OnboardingScreen()]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SvgPicture.asset(Assets.svgs.splashScreenImage.path),
      ),
    );
  }
}
