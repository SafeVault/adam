import 'package:adam/core/constants/fonts.dart';
import 'package:adam/core/themes/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeFiRaiseAppBar extends StatelessWidget {
  final String? title;
  final List<Widget>? actions;
  final bool? isBack;
  final Widget? leading;

  const DeFiRaiseAppBar({
    this.title,
    this.actions,
    this.isBack = false,
    this.leading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryBackgroundColor,
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Text(title ?? '',
          style: AdamFonts.b1(context).copyWith(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w400,
            fontSize: 15.sp,
          )),
      actions: actions,
      leading: isBack!
          ? IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                // context.pop();
              },
            )
          : leading,
    );
  }
}
