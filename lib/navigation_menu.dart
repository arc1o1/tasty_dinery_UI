import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udsm_food_point/features/personnalization/screens/settings/settings.dart';
import 'package:udsm_food_point/features/shop/screens/order/order.dart';
import 'package:udsm_food_point/features/shop/screens/search/search_meal.dart';
import 'package:udsm_food_point/features/shop/screens/home/home.dart';
import 'package:udsm_food_point/features/shop/screens/wishlist/wishlist.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:udsm_food_point/utils/constants/colors.dart';
import 'package:udsm_food_point/utils/constants/sizes.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    const List<TabItem> items = [
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.search, title: 'Search'),
      TabItem(icon: Icons.favorite_rounded, title: 'Wishlist'),
      TabItem(icon: Icons.inventory_rounded, title: 'My Orders'),
      TabItem(icon: Icons.settings, title: 'Settings'),
    ];

    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomBarDefault(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(CcSizes.cardRadiusSm),
            topRight: Radius.circular(CcSizes.cardRadiusSm),
          ),
          items: items,
          backgroundColor: CcColors.darkerGrey.withOpacity(0.2),
          color: Colors.black,
          colorSelected: Colors.blue.shade700,
          indexSelected: controller.selectedIndex.value,
          onTap: (index) => controller.selectedIndex.value = index,
          animated: false,
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const SearchScreen(),
    const FavoriteScreen(),
    const OrderScreen(),
    const SettingsScreen(),
  ];
}
