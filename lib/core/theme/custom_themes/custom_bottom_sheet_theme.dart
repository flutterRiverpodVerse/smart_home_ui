import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_ui/core/constants/app_colors.dart';

class CustomBottomSheetTheme {
  CustomBottomSheetTheme._();

//Light

  static BottomSheetThemeData lightBottomSheetThemeData = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: AppColors.white,
    modalBackgroundColor: AppColors.white,
    constraints: BoxConstraints(
      minWidth: 1.sw,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        16.r,
      ),
    ),
  );

//Dark
  static BottomSheetThemeData darkBottomSheetThemeData = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: AppColors.black,
    modalBackgroundColor: AppColors.black,
    constraints: BoxConstraints(
      minWidth: 1.sw,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        16.r,
      ),
    ),
  );
}
