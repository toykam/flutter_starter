
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wuri/frontend/styles/colors.dart';

final buttonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return AppColors.colorDCCBF6;
      }
      return AppColors.color4D05BC;
    }),
    elevation: MaterialStateProperty.all(0),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.r),
    )),
    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16.h))
);

final outlineButtonStyle = buttonStyle.copyWith(
    backgroundColor: MaterialStateProperty.all(Colors.white),
    elevation: MaterialStateProperty.all(0),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.r),
    )),
    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16.h)),
    side: MaterialStateProperty.all(BorderSide(color: AppColors.primaryColor))
);