import 'package:al_khalifa_dashboard/app/data/app_colors.dart';
import 'package:al_khalifa_dashboard/app/data/app_text_styles.dart';
import 'package:al_khalifa_dashboard/app/modules/product_category/widget/food_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/product_category_controller.dart';



class ProductCategoryView extends GetView<ProductCategoryController> {
  const ProductCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool mobileDevice=false;
    bool desktopDevice=false;
    bool tabletDevice=false;
    int crossAxisCount;
    if (width >= 1200) {
      crossAxisCount = 4;
      desktopDevice=true;
    } else if (width >= 600 && width <1200) {
      crossAxisCount = 3;
      tabletDevice=true;
    } else if (width >= 600) {
      crossAxisCount = 2;
      tabletDevice=true;
    } else {
      crossAxisCount = 1;
      mobileDevice=true;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Manage Your products and reels',
                    style:desktopDevice ? AppTextStyles.medium36.copyWith(
                      color: AppColors.blackColor,
                    ):tabletDevice?AppTextStyles.medium26.copyWith(
                      color: AppColors.blackColor,
                    ) :AppTextStyles.medium12.copyWith(
                      color: AppColors.blackColor,
                    )
                  ),
                ),
                SizedBox(width: 8.w),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Add a new product',
                    style:desktopDevice? TextStyle(fontSize: 16.sp):tabletDevice ?TextStyle(fontSize: 12.sp):TextStyle(fontSize: 8.sp)
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.w,
                  childAspectRatio: 0.55,
                  mainAxisExtent: desktopDevice? 460.w:tabletDevice?420.w:330.w

                ),
                itemBuilder: (context, index) {
                  return const FoodCard();
                },
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text(
                  'Showing 1 to 4 of 4 results',
                  style: AppTextStyles.regular16.copyWith(
                    color: Colors.green,
                    fontSize: (width < 600 ? 12.sp : 16.sp), // mobile small
                  ),
                ),
                const Spacer(),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.green, width: 1),
                    backgroundColor: AppColors.greenLightColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: (width < 600 ? 12.w : 20.w),
                      vertical: (width < 600 ? 8.h : 12.h),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text(
                    'Previous',
                    style: AppTextStyles.medium16.copyWith(
                      color: Colors.green,
                      fontSize: (width < 600 ? 12.sp : 16.sp),
                    ),
                  ),
                ),
                SizedBox(width: (width < 600 ? 6.w : 8.w)),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.green, width: 1),
                    backgroundColor: AppColors.greenLightColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: (width < 600 ? 12.w : 20.w),
                      vertical: (width < 600 ? 8.h : 12.h),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text(
                    'Next',
                    style: AppTextStyles.medium16.copyWith(
                      color: Colors.green,
                      fontSize: (width < 600 ? 12.sp : 16.sp),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
