
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wuri/frontend/styles/colors.dart';
import 'package:wuri/frontend/widgets/spacer.dart';

import '../../../../gen/assets.gen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        // ColumnSpace(190.h),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 61.w),
          child: Assets.images.welcomeScreenImage.image(),
        ),

        ColumnSpace(90.h),

        Text("Congratulations 🎉", style: TextStyle(
          fontSize: 24.sp, fontWeight: FontWeight.w600, color: AppColors.color4A00B9
        ),),
        ColumnSpace(16.h),
        Text("Welcome to Wuri", style: TextStyle(
            fontSize: 24.sp, fontWeight: FontWeight.w400, color: AppColors.color4A00B9
        ),),

        ColumnSpace(60.h),

        CircleAvatar(
          backgroundColor: AppColors.color4A00B9,
          radius: 30.r,
          child: const Icon(Icons.arrow_right_alt, color: Colors.white,),
        )

      ],
    );
  }
}
