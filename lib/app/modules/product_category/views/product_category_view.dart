import 'package:al_khalifa_dashboard/app/data/app_colors.dart';
import 'package:al_khalifa_dashboard/app/data/app_text_styles.dart';
import 'package:flutter/material.dart';

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
                Text('Manage Your products and reels',style: AppTextStyles.medium36.copyWith(color: AppColors.blackColor),),
                Spacer(),
                ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: AppColors.primaryColor,
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      textStyle: AppTextStyles.medium20.copyWith(
                        color: AppColors.whiteColor,
                      ), // textStyle: AppTextStyles.bold16,
                    ),
                    child: Text('Add a new product',))

              ],
            )
          ],
        ),
      )
    );
  }
}
