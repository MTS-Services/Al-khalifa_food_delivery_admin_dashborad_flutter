import 'package:al_khalifa_dashboard/app/data/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/app_colors.dart';

class WithdrawalHistoryTable extends StatelessWidget {
  final List<Map<String, String>> data;

  const WithdrawalHistoryTable({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Withdrawal History",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          _buildTableHeader(),
          const Divider(height: 2, color: AppColors.primaryColor),
          ...data.map((item) => _buildTableRow(item)),
          const SizedBox(height: 20),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: AppColors.greenLightColor,
          border: const Border(
            top: BorderSide(
              color: Colors.black, // border color
              width: 1.0, // border thickness
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                "Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                "Phone number",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                "City",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                "Address",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTableRow(Map<String, String> item) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.primaryColor)),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(item["name"] ?? "", style: AppTextStyles.regular16),
          ),
          Expanded(
            flex: 2,
            child: Text(item["phone"] ?? "", style: AppTextStyles.regular16),
          ),
          Expanded(
            flex: 2,
            child: Text(item["email"] ?? "", style: AppTextStyles.regular16),
          ),
          Expanded(
            flex: 2,
            child: Text(item["city"] ?? "", style: AppTextStyles.regular16),
          ),
          Expanded(
            flex: 3,
            child: Text(item["address"] ?? "", style: AppTextStyles.regular16),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Text(
            'Showing 1 to 6 out of 6 result',
            style: AppTextStyles.regular16.apply(color: AppColors.primaryColor),
          ),
        ),
        Row(
          children: [
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: AppColors.primaryColor, width: 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Previous",
                style: TextStyle(color: AppColors.primaryColor),
              ),
            ),
            const SizedBox(width: 8),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: AppColors.primaryColor, width: 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Next",
                style: TextStyle(color: AppColors.primaryColor),
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ],
    );
  }
}
