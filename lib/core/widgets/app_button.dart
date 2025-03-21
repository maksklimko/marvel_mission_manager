import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_mission_manager/core/extensions/theme_extension.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width,
    this.isLoading = false,
  });
  final VoidCallback onPressed;
  final String title;
  final double? width;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 33.h,
      child: ElevatedButton(
        onPressed: onPressed,
        child:
            isLoading
                ? const CircularProgressIndicator()
                : Text(title, style: context.theme.textTheme.labelMedium),
      ),
    );
  }
}
