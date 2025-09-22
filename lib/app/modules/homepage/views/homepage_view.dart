import 'package:al_khalifa_dashboard/app/data/image_path.dart';
import 'package:al_khalifa_dashboard/app/modules/homepage/views/user_dash_bord.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../product_category/views/product_category_view.dart';
import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  const HomepageView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImagePath.appLogo, height: 80.h),
              _buildExpanded(),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            UserDashBord(),
            ProductCategoryView(),
            Center(
              child: Text(
                'Category Content',
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpanded() {
    return Expanded(
      child: Center(
        child: TabBar(
          isScrollable: true,
          tabs: const [
            Tab(text: 'User dashboard'),
            Tab(text: 'Products'),
            Tab(text: 'Category'),
          ],
          indicatorColor: Colors.green,
          labelColor: Colors.green,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontSize: 14.sp),
        ),
      ),
    );
  }
}
