

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wuri/frontend/routes/routes.gr.dart';
import 'package:wuri/frontend/styles/text_style.dart';
import 'package:wuri/frontend/widgets/spacer.dart';
import 'package:wuri/get_locator.dart';

import '../../../../gen/assets.gen.dart';

class SelectEmailOrPhoneScreen extends StatelessWidget {
  const SelectEmailOrPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 91.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Assets.svgs.wuriR.svg(),
              SizedBox(width: 10.w,),
              Text("Welcome to Wuri", style: TextStyle(
                fontSize: 14.sp, fontWeight: FontWeight.w400,
                color: const Color(0xFF646464)
              ),)
            ],
          ),
        ),

        SizedBox(height: 40.h),

        Padding(
          padding: EdgeInsets.only(left: 16.w, right: 83.w),
          child: Text("Make Global Payment transactions Easily", style: TextStyle(
              fontSize: 24.sp, fontWeight: FontWeight.w700,
              color: const Color(0xFF28005E)
          ),),
        ),

        SizedBox(height: 91.h),


        Container(
          margin: EdgeInsets.symmetric(horizontal: 33.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.r),
              topLeft: Radius.circular(30.r),
            ),
            border: Border.all(
              color: const Color(0xFF4A00B9),
              width: .5
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Assets.images.createWithPhoneImg.image(
                height: 122.h
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF4A00B9)
                ),
                padding: const EdgeInsets.fromLTRB(0, 11, 0, 9.74),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Create with Phone Number", style: hoverTextStyle.copyWith(
                      fontSize: 14.sp, fontWeight: FontWeight.w500, color: Colors.white
                    ),),
                    RowSpace(16.w),
                    Assets.svgs.nextButtonIconsvg.svg()
                  ],
                ),
              ),
              Container(
                color: const Color(0xFF8908D9),
                height: 3.h,
              )
            ],
          ),
        ),

        SizedBox(height: 64.h),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 33.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.r),
                topLeft: Radius.circular(30.r),
              ),
              border: Border.all(
                  color: const Color(0xFF4A00B9),
                  width: .5
              )
          ),
          child: InkWell(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.r),
              topLeft: Radius.circular(30.r),
            ),
            onTap: () {
              getIt<AppRouter>().push(EmailOrPhoneScreen(
                isEmail: true
              ));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 12.h ,),
                Assets.images.createEmailImage.image(
                  height: 122.h
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF4A00B9)
                  ),
                  padding: const EdgeInsets.fromLTRB(0, 11, 0, 9.74),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Create with Email Address", style: hoverTextStyle.copyWith(
                          fontSize: 14.sp, fontWeight: FontWeight.w500, color: Colors.white
                      ),),
                      RowSpace(16.w),
                      Assets.svgs.nextButtonIconsvg.svg()
                    ],
                  ),
                ),
                Container(
                  color: const Color(0xFF8908D9),
                  height: 3.h,
                )
              ],
            ),
          ),
        ),

      ],
    );
  }
}
