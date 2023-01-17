

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../get_locator.dart';
import '../../../routes/routes.gr.dart';
import '../../../styles/button_styles.dart';
import '../../../styles/colors.dart';
import '../../../widgets/spacer.dart';
import '../widgets/auth_screen_header.dart';
import '../widgets/auth_screen_page_header.dart';

class CreateUsernameScreen extends StatelessWidget {
  const CreateUsernameScreen({Key? key}) : super(key: key);

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
            title: "Create Username",
            subtitle: "Enter a password to protect your funds. Ensure you do not forget it.",
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
              Text("Full name", style: TextStyle(
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
                    hintText: "Farida Kabir",
                    hintStyle: TextStyle(
                      fontSize: 16.sp, fontWeight: FontWeight.w400,
                      color: AppColors.color818181
                    )
                ),
              ),

              ColumnSpace(40.h),


              Text("Display Name", style: TextStyle(
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
                  hintText: "Display name",
                  hintStyle: TextStyle(
                    fontSize: 16.sp, fontWeight: FontWeight.w400,
                    color: AppColors.color818181
                  ),
                  prefixIcon: const Icon(Icons.alternate_email_sharp)
                ),
              ),

              ColumnSpace(12.h),

              Text("Display name serves as your wuri tag", style: TextStyle(
                  fontSize: 14.sp, fontWeight: FontWeight.w400,
                  color: AppColors.colorBBB9B9
              ),),

            ],
          ),
        ),


        ColumnSpace(237.h),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: ElevatedButton(
            onPressed: () {
              getIt<AppRouter>().replaceAll([const CreateWuriPinScreen()]);
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
