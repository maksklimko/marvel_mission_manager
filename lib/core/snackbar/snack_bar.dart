import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marvel_mission_manager/core/constants/assets.dart';
import 'package:marvel_mission_manager/core/constants/strings.dart';
import 'package:marvel_mission_manager/core/theme/theme.dart';

class AppSnackBar {
  AppSnackBar._();
  static void showError(BuildContext context, String message) {
    Flushbar(
      duration: const Duration(seconds: 2),
      message: message,
      backgroundColor: context.appTheme.snackbarTheme.backgroundColor,
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.FLOATING,
      messageText: Text(
        message,
        style: context.appTheme.snackbarTheme.messageStyle,
      ),
    ).show(context);
  }

  static void showWarning(BuildContext context) {
    Flushbar(
      duration: const Duration(seconds: 2),
      backgroundColor: context.appTheme.snackbarTheme.backgroundColor,
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.FLOATING,
      messageText: Row(
        children: [
          SvgPicture.asset(Assets.dangerIcon),
          SizedBox(width: 10),
          Text(
            Strings.nickFuryIsCalling,
            style: context.appTheme.snackbarTheme.messageStyle,
          ),
        ],
      ),
    ).show(context);
  }
}
