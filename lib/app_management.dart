import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'app/data/theme.dart';
import 'app/routes/app_pages.dart';

class AppManagement extends StatelessWidget {
  const AppManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {

        Size designSize;
        double width = constraints.maxWidth;
        if (width >= 1200) {
          designSize = const Size(1920, 1080);
        } else if (width >= 600) {
          designSize = const Size(1024, 768);
        } else {
          designSize = const Size(375, 812);
        }

        return ScreenUtilInit(
          designSize: designSize,
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => GetMaterialApp(
            title: "Application",
            theme: themeData(),
            debugShowCheckedModeBanner: false,
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          ),
        );
      },
    );
  }
}
