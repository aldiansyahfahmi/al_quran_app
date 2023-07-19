import 'package:al_quran_app/shared_libraries/utils/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  final double height;
  final double width;
  final Color color;

  const CustomDivider({
    Key? key,
    this.height = 1,
    this.width = double.infinity,
    this.color = ColorName.gray2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: width,
      height: height.h,
    );
  }
}
