import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_mission_manager/core/constants/assets.dart';
import 'package:marvel_mission_manager/core/theme/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.leading, this.trailing});
  final Widget? leading;
  final Widget? trailing;

  @override
  Size get preferredSize => Size.fromHeight(50.h);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appTheme.missionTheme.topBarBackgroundColor,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Center(child: Image.asset(Assets.marvelLogo, height: 40)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (leading != null) leading!,
                if (trailing != null) trailing!,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
