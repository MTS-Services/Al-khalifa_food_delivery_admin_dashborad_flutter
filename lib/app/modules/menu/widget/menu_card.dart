import 'package:al_khalifa_dashboard/app/data/app_colors.dart';
import 'package:al_khalifa_dashboard/app/data/app_text_styles.dart';
import 'package:al_khalifa_dashboard/app/data/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MenuCard extends StatelessWidget {
  const MenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double imageHeight;
    if (width >= 1200) {
      imageHeight = 200.h;
    } else if (width >= 800) {
      imageHeight = 180.h;
    } else if (width >= 600) {
      imageHeight = 150.h;
    } else {
      imageHeight = 130.h;
    }
    return Container(
      decoration: BoxDecoration(
        color: AppColors.strokeColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                ImagePath.burgerImage,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Cheese Blast Burger',
              style: AppTextStyles.medium20.copyWith(
                color: AppColors.blackColor,
                fontSize: (width < 600 ? 16.sp : 20.sp),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Juicy beef patty with melted cheese, fresh veggies, and special sauce, Chili sauce.',
              style: AppTextStyles.regular16.copyWith(
                color: AppColors.darkBlackColor,
                fontSize: (width < 600 ? 12.sp : 16.sp),
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.edit, color: Colors.green, size: 20.sp),
                    label: Text(
                      'Edit',
                      style: AppTextStyles.medium16.copyWith(
                        color: Colors.green,
                        fontSize: (width < 600 ? 12.sp : 16.sp),
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.green, width: 1),
                      backgroundColor: AppColors.greenLightColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 12.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.delete_forever_outlined,
                        color: Colors.red, size: 20.sp),
                    label: Text(
                      'Delete',
                      style: AppTextStyles.medium16.copyWith(
                        color: Colors.red,
                        fontSize: (width < 600 ? 12.sp : 16.sp),
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.red, width: 1),
                      backgroundColor: AppColors.redLightColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 12.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



