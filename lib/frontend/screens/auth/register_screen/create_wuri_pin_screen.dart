

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../get_locator.dart';
import '../../../routes/routes.gr.dart';
import '../../../styles/button_styles.dart';
import '../../../styles/colors.dart';
import '../../../widgets/spacer.dart';
import '../widgets/auth_screen_header.dart';
import '../widgets/auth_screen_page_header.dart';

class CreateWuriPinScreen extends StatelessWidget {
  const CreateWuriPinScreen({Key? key}) : super(key: key);

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
            title: "Create Wuri pin",
            subtitle: "Enter a password to protect your funds. Ensure you do not forget it.",
          ),
        ),

        ColumnSpace(32.h),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Create Pin", style: TextStyle(
                  fontSize: 14.sp, fontWeight: FontWeight.w400,
                  color: AppColors.color28005E
              ),),

              ColumnSpace(12.h),

              Row(
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

              ColumnSpace(12.h),

              Text("Input 4 digit code", style: TextStyle(
                  fontSize: 14.sp, fontWeight: FontWeight.w400,
                  color: AppColors.color28005E
              ),),


              ColumnSpace(40.h),


              Text("Confirm Pin", style: TextStyle(
                  fontSize: 14.sp, fontWeight: FontWeight.w400,
                  color: AppColors.color28005E
              ),),

              ColumnSpace(12.h),

              Row(
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

              ColumnSpace(12.h),

              Text("Input 4 digit code", style: TextStyle(
                  fontSize: 14.sp, fontWeight: FontWeight.w400,
                  color: AppColors.color28005E
              ),),


            ],
          ),
        ),


        Expanded(child: ColumnSpace(207.h)),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: ElevatedButton(
            onPressed: () {
              getIt<AppRouter>().replace(const WelcomeScreen());
            },
            style: buttonStyle,
            child: Text("Continue", style: TextStyle(
                fontSize: 16.sp, color: Colors.white
            ),),
          ),
        ),
        
        ColumnSpace(40.h)

      ],
    );
  }
}
