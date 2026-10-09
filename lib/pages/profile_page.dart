import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constants/app_colors.dart';
import '../core/constants/app_text_styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool notifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'.tr()),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          // Аватар и имя
          CircleAvatar(
            radius: 50.r,
            backgroundColor: AppColors.primary,
            child: Icon(Icons.person, size: 50.r, color: AppColors.white),
          ),
          SizedBox(height: 12.h),
          Text('user_name'.tr(), style: AppTextStyles.title, textAlign: TextAlign.center),
          Text('amina@mail.com', style: AppTextStyles.caption, textAlign: TextAlign.center),
          SizedBox(height: 24.h),

          Text('settings'.tr(), style: AppTextStyles.subtitle),
          SizedBox(height: 8.h),

          // Уведомления
          SwitchListTile(
            title: Text('notifications'.tr(), style: AppTextStyles.body),
            secondary: const Icon(Icons.notifications),
            value: notifications,
            onChanged: (value) {
              setState(() {
                notifications = value;
              });
            },
          ),

          // Переключатель языка
          ListTile(
            leading: const Icon(Icons.language),
            title: Text('language'.tr(), style: AppTextStyles.body),
            trailing: DropdownButton<String>(
              value: context.locale.languageCode,
              items: const [
                DropdownMenuItem(value: 'ru', child: Text('Русский')),
                DropdownMenuItem(value: 'en', child: Text('English')),
                DropdownMenuItem(value: 'kk', child: Text('Қазақша')),
              ],
              onChanged: (value) {
                context.setLocale(Locale(value!));
              },
            ),
          ),

          // О приложении
          ListTile(
            leading: const Icon(Icons.info),
            title: Text('about'.tr(), style: AppTextStyles.body),
            subtitle: Text('about_text'.tr(), style: AppTextStyles.caption),
          ),
        ],
      ),
    );
  }
}
