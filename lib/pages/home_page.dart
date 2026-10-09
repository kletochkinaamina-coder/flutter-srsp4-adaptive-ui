import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constants/app_colors.dart';
import '../core/constants/app_text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'.tr()),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          Icon(Icons.storefront, size: 100.w, color: AppColors.primary),
          SizedBox(height: 16.h),
          Text('welcome'.tr(), style: AppTextStyles.title, textAlign: TextAlign.center),
          SizedBox(height: 8.h),
          Text('welcome_text'.tr(), style: AppTextStyles.caption, textAlign: TextAlign.center),
          SizedBox(height: 24.h),

          // Карточка 1
          Card(
            color: AppColors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Row(
                children: [
                  Icon(Icons.new_releases, size: 40.w, color: AppColors.orange),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('new_items'.tr(), style: AppTextStyles.subtitle),
                        SizedBox(height: 4.h),
                        Text('new_items_text'.tr(), style: AppTextStyles.caption),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12.h),

          // Карточка 2
          Card(
            color: AppColors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Row(
                children: [
                  Icon(Icons.local_offer, size: 40.w, color: AppColors.red),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('sale'.tr(), style: AppTextStyles.subtitle),
                        SizedBox(height: 4.h),
                        Text('sale_text'.tr(), style: AppTextStyles.caption),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
