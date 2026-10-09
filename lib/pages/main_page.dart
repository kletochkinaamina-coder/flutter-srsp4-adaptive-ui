import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';
import 'catalog_page.dart';
import 'favorites_page.dart';
import 'home_page.dart';
import 'profile_page.dart';

// Экран, который переключает страницы через BottomBar
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  List<Widget> pages = const [
    HomePage(),
    CatalogPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
