import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';

class BottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textSecondary,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: context.tr('home'),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.shopping_bag),
          label: context.tr('catalog'),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.favorite),
          label: context.tr('favorites'),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person),
          label: context.tr('profile'),
        ),
      ],
    );
  }
}
