import 'package:al_quran_app/shared_libraries/utils/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final List<Widget>? action;
  final PreferredSizeWidget? bottom;
  const CustomAppBar({
    Key? key,
    required this.title,
    this.centerTitle = true,
    this.action,
    this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
            color: ColorName.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700),
      ),
      elevation: 0,
      backgroundColor: ColorName.purple,
      iconTheme: const IconThemeData(color: ColorName.white),
      actions: action,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
