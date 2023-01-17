

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../styles/colors.dart';
import '../../../widgets/spacer.dart';

class AuthScreenPageHeader extends StatelessWidget {
  const AuthScreenPageHeader({
    Key? key,
    required this.title,
    required this.subtitle
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(
            fontSize: 24.sp, fontWeight: FontWeight.w600,
            color: const Color(0xFF4A00B9)
        ),),
        ColumnSpace(12.h),
        Text(subtitle, style: TextStyle(
            fontSize: 14.sp, fontWeight: FontWeight.w400,
            color: AppColors.color646464
        ),),
      ],
    );
  }
}
