
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:wuri/frontend/routes/routes.gr.dart';
import 'package:wuri/frontend/styles/button_styles.dart';
import 'package:wuri/frontend/styles/colors.dart';
import 'package:wuri/frontend/widgets/spacer.dart';

import '../../../gen/assets.gen.dart';
import '../../../get_locator.dart';

class IntroItem {
  String title;
  String graphicsPath;
  String type;

  IntroItem({required this.type, required this.title, required this.graphicsPath});
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final List<IntroItem> introItems = [
    IntroItem(type: 'svg', title: "Fund your wallet", graphicsPath: Assets.svgs.introGraphics1.path),
    IntroItem(type: 'svg', title: "Different Currencies", graphicsPath: Assets.svgs.introGraphics2.path),
    IntroItem(type: 'svg', title: "Transfer To Any Account", graphicsPath: Assets.svgs.introGraphics3.path),
    IntroItem(type: 'lottie', title: "Global Payment", graphicsPath: Assets.lottie.introLast.path),
  ];

  int currentIndex = 0;

  final _pageViewController = PageController(initialPage: 0);
  Timer? _timer;

  void _autoMove() {
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      final islast = currentIndex == introItems.length - 1;
      if (!islast) {
        _pageViewController.animateToPage(currentIndex++, duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
      } else {
        currentIndex = -1;
      }
    });
  }

  @override
  void initState() {
    _autoMove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ColumnSpace(24+47),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              children: [
                ...List.generate(introItems.length, (index) => Expanded(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: 4.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: currentIndex >= index ? const Color(0xFF4D05BC) : const Color(0xFFE2D5F4)
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 4.r),
                  ),
                ))
              ],
            ),
          ),
          ColumnSpace(18),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(Assets.svgs.wuriR.path),
            ),
          ),

          ColumnSpace(20),

          Expanded(
            child: PageView.builder(
              controller: _pageViewController,
              itemCount: introItems.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final introItem = introItems[index];
                return Column(
                  children: [
                    ColumnSpace(23),
                    Center(
                      child: Text(introItem.title, style: TextStyle(
                        fontSize: 24.sp, color: AppColors.primaryColor, fontWeight: FontWeight.w400
                      ),),
                    ),

                    ColumnSpace(86),
                    Visibility(
                      visible: introItem.type == 'svg',
                      replacement: Lottie.asset(introItem.graphicsPath, height: 290.h, width: 290.w),
                      child: SvgPicture.asset(introItem.graphicsPath),
                    ),


                    ColumnSpace(88),
                  ],
                );
              },
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),

          ColumnSpace(20),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            child: ElevatedButton(
              onPressed: () {
                getIt<AppRouter>().replaceAll([const AuthScreen(
                  children: [
                    RegisterScreen()
                  ]
                )]);
              },
              style: buttonStyle,
              child: Text("Sign Up", style: TextStyle(
                fontSize: 16.sp, color: Colors.white
              ),),
            ),
          ),

          ColumnSpace(16),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            child: OutlinedButton(
              onPressed: () {
                getIt<AppRouter>().replaceAll([const AuthScreen(
                  children: [
                    LoginScreen()
                  ]
                )]);
              },
              style: outlineButtonStyle,
              child: Text("Login", style: TextStyle(
                fontSize: 16.sp, color: AppColors.primaryColor,
                fontWeight: FontWeight.w500
              ),),
            ),
          ),

          ColumnSpace(40),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    _timer!.cancel();
    super.dispose();
  }
}
