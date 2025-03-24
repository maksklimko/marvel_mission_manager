import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marvel_mission_manager/core/constants/colors.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed ?? () => context.pop(),
      icon: Icon(Icons.arrow_back_ios_new, color: AppColors.white),
    );
  }
}
