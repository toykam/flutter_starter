

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wuri/frontend/screens/auth/widgets/auth_screen_header.dart';
import 'package:wuri/frontend/screens/auth/widgets/auth_screen_page_header.dart';
import 'package:wuri/frontend/styles/colors.dart';
import 'package:wuri/frontend/widgets/spacer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../get_locator.dart';
import '../../../routes/routes.gr.dart';
import '../../../styles/button_styles.dart';

class EmailOrPhoneScreen extends StatelessWidget {
  const EmailOrPhoneScreen({
    Key? key,
    this.isEmail = false
  }) : super(key: key);

  final bool isEmail;

  @override
  Widget build(BuildContext context) {
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
            title: "Sign Up",
            subtitle: "Enter the mobile number on your BVN",
          ),
        ),

        ColumnSpace(50.h),

        Container(
          padding: EdgeInsets.only(
            left: 16.w, right: 16.w
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Mobile Number", style: TextStyle(
                  fontSize: 14.sp, fontWeight: FontWeight.w400,
                  color: AppColors.color28005E
              ),),

              ColumnSpace(12.h),

              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.color818181),
                      borderRadius: BorderRadius.circular(4.r)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                    child: Center(
                      child: Text("+234", style: TextStyle(
                        fontSize: 16.sp, fontWeight: FontWeight.w400,
                        color: AppColors.color818181
                      ),),
                    ),
                  ),
                  RowSpace(12.w),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.color818181),
                          borderRadius: BorderRadius.circular(4.r)
                        ),
                        constraints: BoxConstraints(
                          maxHeight: 49.h, minHeight: 49.h
                        ),
                        hintText: "Mobile Number",
                        hintStyle: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w400,
                          color: AppColors.color818181
                        )
                      ),
                    ),
                  )
                ],
              ),

              ColumnSpace(24.h),

              Text("Already have an account? Log in.", style: TextStyle(
                fontSize: 14.sp, fontWeight: FontWeight.w400,
                color: AppColors.color4A00B9
              ),),

            ],
          ),
        ),


        ColumnSpace(347.h),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: ElevatedButton(
            onPressed: () {
              getIt<AppRouter>().replaceAll([const VerifyAccountScreen()]);
            },
            style: buttonStyle,
            child: Text("Sign Up", style: TextStyle(
                fontSize: 16.sp, color: Colors.white
            ),),
          ),
        ),

      ],
    );
  }
}
