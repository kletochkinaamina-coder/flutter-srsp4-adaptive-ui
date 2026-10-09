import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constants/app_colors.dart';
import '../core/constants/app_text_styles.dart';
import '../data/products.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    // Берём только те товары, которые добавлены в избранное
    List<Product> favorites = products.where((p) => p.isFavorite).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('favorites'.tr()),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
      ),
      body: favorites.isEmpty
          ? Center(
              child: Text('no_favorites'.tr(), style: AppTextStyles.caption),
            )
          : ListView.builder(
              padding: EdgeInsets.all(12.w),
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                Product product = favorites[index];

                return Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Image.network(
                        product.image,
                        width: 50.w,
                        height: 50.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(product.name.tr(), style: AppTextStyles.body),
                    subtitle: Text('${'price'.tr()}: ${product.price} тг', style: AppTextStyles.caption),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: AppColors.red),
                      onPressed: () {
                        setState(() {
                          product.isFavorite = false;
                        });
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}
