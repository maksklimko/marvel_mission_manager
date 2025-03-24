import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_mission_manager/core/constants/colors.dart';
import 'package:marvel_mission_manager/core/extensions/theme_extension.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width,
    this.isLoading = false,
    this.color,
    this.isDisabled = false,
  });
  final VoidCallback onPressed;
  final String title;
  final double? width;
  final bool isLoading;
  final bool isDisabled;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 33.h,
      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.lavaRed,
          disabledBackgroundColor: AppColors.onyx,
        ),
        child:
            isLoading
                ? SizedBox(
                  width: 25,
                  height: 25,
                  child: const CircularProgressIndicator(
                    color: AppColors.white,
                  ),
                )
                : Text(title, style: context.theme.textTheme.labelMedium),
      ),
    );
  }
}
