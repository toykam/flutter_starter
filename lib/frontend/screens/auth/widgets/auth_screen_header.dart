
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wuri/frontend/routes/routes.gr.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../get_locator.dart';

class AuthScreenHeader extends StatelessWidget {
  const AuthScreenHeader({
    Key? key,
    required this.title
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      child: Stack(
          children: [
            Positioned.fill(
              child: Text(title, style: TextStyle(
                fontSize: 17.sp
              ), textAlign: TextAlign.center,),
            ),
            Positioned(
              left: 0, top: 0, bottom: 0,
              child: InkWell(
                onTap: () {
                  getIt<AppRouter>().popTop();
                },
                child: Assets.svgs.arrowLeft.svg()
              ),
            ),
          ],
        )
    );
  }
}
