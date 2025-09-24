import 'package:al_khalifa_dashboard/app/data/app_colors.dart';
import 'package:al_khalifa_dashboard/app/data/app_text_styles.dart';
import 'package:al_khalifa_dashboard/app/data/image_path.dart';
import 'package:al_khalifa_dashboard/app/modules/homepage/views/user_dash_bord.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../categories/views/categories_screen.dart';
import '../../menu/views/menu_view.dart';
import '../../product_category/views/product_category_view.dart';
import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  const HomepageView({super.key});

  @override
  Widget build(BuildContext context) {
    // scale AppBar height with screenutil
    final double barHeight = 88.h; // 88 logical pixels scaled

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: barHeight,
          leadingWidth: barHeight, // match the height for square logo area
          surfaceTintColor: Colors.transparent,
          elevation: 6, // 👈 adds shadow
          shadowColor: Colors.black.withAlpha(77), // 👈 customize shadow color
          centerTitle: true,
          titleSpacing: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: SizedBox(
              height: barHeight,
              width: barHeight, // square box
              child: Image.asset(ImagePath.appLogo, fit: BoxFit.contain),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildExpanded()],
          ),
        ),
        body: const TabBarView(
          children: [
            UserDashBord(),
            ProductCategoryView(),
            MenuView(),
            CategoriesScreen(),
          ],
        ),
      ),
    );
  }

  Widget _buildExpanded() {
    return Center(
      child: TabBar(
        isScrollable: true,
        tabs: const [
          Tab(text: 'User dashboard'),
          Tab(text: 'Products'),
          Tab(text: 'Party Menu'),
          Tab(text: 'Category'),
        ],
        indicatorColor: AppColors.primaryColor,
        dividerHeight: 0,
        splashFactory: NoSplash.splashFactory,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        labelColor: AppColors.primaryColor,
        unselectedLabelColor: Colors.grey,
        labelStyle: AppTextStyles.bold16,
        unselectedLabelStyle: AppTextStyles.medium16,
      ),
    );
  }
}
