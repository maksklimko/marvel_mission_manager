import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_mission_manager/core/router/router.dart';
import 'package:marvel_mission_manager/core/theme/theme_manager.dart';
import 'package:marvel_mission_manager/core/utils/scroll_behaiviour.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(295, 626),
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          theme: ThemeManager.dark,
          scrollBehavior: AppScrollBehavior(),
        );
      },
    );
  }
}
