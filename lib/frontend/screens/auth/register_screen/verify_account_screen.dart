
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wuri/frontend/routes/routes.gr.dart';
import 'package:wuri/get_locator.dart';

import '../../../styles/colors.dart';
import '../../../widgets/spacer.dart';
import '../widgets/auth_screen_header.dart';
import '../widgets/auth_screen_page_header.dart';

class VerifyAccountScreen extends StatelessWidget {
  const VerifyAccountScreen({Key? key}) : super(key: key);
  
  void goNextPage() {
    Future.delayed(const Duration(seconds: 6)).then((value) {
      getIt<AppRouter>().replace(const CreateUsernameScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    goNextPage();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ColumnSpace(79.h),

        Container(
          padding: EdgeInsets.only(
              left: 16.w
          ),
          child: const AuthScreenHeader(title: "Account Creation"),
        ),


        ColumnSpace(40.h),

        Container(
          padding: EdgeInsets.only(
              left: 16.w, right: 16.w
          ),
          child: const AuthScreenPageHeader(
            title: "Verification Code",
            subtitle: "Enter the 4-digit verification code that was sent to +234 81******85.",
          ),
        ),

        ColumnSpace(32.h),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(4, (index) => Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: AppColors.color8908D9, width: 2)
                  )
                ),
                width: 62.w, height: 50.h,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: .5, color: AppColors.color4A00B9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r),
                      )
                    )
                  ),
                ),
              ))
            ],
          ),
        ),

        ColumnSpace(32.h),

        Container(
          padding: EdgeInsets.only(
              left: 16.w, right: 16.w
          ),
          child: InkWell(
            child: Text("Resend code in 10:11", style: TextStyle(
              fontSize: 14.sp, color: AppColors.colorA3A3A3, fontFamily: "Droid Sans"
            ),),
          ),
        ),



      ],
    );
  }
}
