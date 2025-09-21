import 'package:al_khalifa_dashboard/app/data/app_colors.dart';
import 'package:al_khalifa_dashboard/app/data/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/product_category_controller.dart';

class ProductCategoryView extends GetView<ProductCategoryController> {
  const ProductCategoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Manage Your products and reels',
                    style: AppTextStyles.medium36.copyWith(color: AppColors.blackColor),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 8.w),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Add a new product', style: TextStyle(fontSize: 16.sp)),
                )
              ],
            )

          ],
        ),
      )
    );
  }
}
