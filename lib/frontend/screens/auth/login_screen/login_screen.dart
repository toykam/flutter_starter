

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../get_locator.dart';
import '../../../routes/routes.gr.dart';
import '../../../styles/button_styles.dart';
import '../../../styles/colors.dart';
import '../../../widgets/spacer.dart';
import '../widgets/auth_screen_header.dart';
import '../widgets/auth_screen_page_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
          child: const AuthScreenHeader(title: ""),
        ),

        ColumnSpace(8.h),

        Container(
          padding: EdgeInsets.only(
              left: 16.w
          ),
          child: Text("Logging in", style: TextStyle(
            fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.color5B3B87
          ),),
        ),
        ColumnSpace(32.h),
        Container(
          padding: EdgeInsets.only(
              left: 16.w, right: 16.w
          ),
          child: const AuthScreenPageHeader(
            title: "Log in to your Wuri",
            subtitle: "Enter your mobile number and password to continue using wuri.",
          ),
        ),

        ColumnSpace(32.h),

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

              ColumnSpace(16.h),

              Text("Password", style: TextStyle(
                  fontSize: 14.sp, fontWeight: FontWeight.w400,
                  color: AppColors.color28005E
              ),),

              ColumnSpace(12.h),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.color818181),
                    borderRadius: BorderRadius.circular(4.r)
                  ),
                  constraints: BoxConstraints(
                    maxHeight: 49.h, minHeight: 49.h
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(
                    fontSize: 16.sp, fontWeight: FontWeight.w400,
                    color: AppColors.color818181
                  )
                ),
              ),

              ColumnSpace(12.h),

              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: const Color(0xFF646464), fontWeight: FontWeight.w400, fontSize: 14.sp
                  ),
                  children: [
                    const TextSpan(text: "At least "),
                    TextSpan(text: "8 characters", style: TextStyle(
                        color: AppColors.color28005E,
                    ),),
                    const TextSpan(text: " with "),
                    TextSpan(text: "a letter", style: TextStyle(
                        color: AppColors.color28005E,
                    ),),
                    const TextSpan(text: " and "),
                    TextSpan(text: "a number", style: TextStyle(
                        color: AppColors.color28005E,
                    ),),
                  ]
                ),
              ),


              ColumnSpace(24.h),

              Text("Don’t have an account? Sign up.", style: TextStyle(
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
            child: Text("Continue", style: TextStyle(
                fontSize: 16.sp, color: Colors.white
            ),),
          ),
        ),

      ],
    );
  }
}
