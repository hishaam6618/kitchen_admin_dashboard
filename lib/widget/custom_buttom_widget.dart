import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_color.dart';

class CustomButtom extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String title;
  final void Function()? onTap;
  const CustomButtom({
    super.key,
    this.onTap,
    required this.width,
    required this.height,
    required this.color,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(15.r)),
      child: InkWell(
        borderRadius: BorderRadius.circular(15.r),
        onTap: onTap,
        child: Center(
            child: Text(
          title,
          style: TextStyle(
              color: AppColor.backgroundColor2,
              fontWeight: FontWeight.w500,
              fontSize: 20.sp),
        )),
      ),
    );
  }
}
