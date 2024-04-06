import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udsm_food_point/common/widgets/appbar/appbar.dart';
import 'package:udsm_food_point/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:udsm_food_point/features/shop/screens/search/search_meal.dart';
import 'package:udsm_food_point/utils/constants/image_strings.dart';
// import 'package:udsm_food_point/utils/constants/sizes.dart';

class CcHomeAppBar extends StatelessWidget {
  const CcHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CcAppBar(
      padding: const EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
      // title
      title: Text(
        "Home",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(color: Colors.white),
      ),
      centerTitle: true,

      // leading image
      showProfile: true,
      imageString: CcImages.user2,
      imageHeight: 20,
      imageWidth: 20,
      imageBackgroundColor: Colors.blue.shade600,

      // cart icon
      actions: [
        IconButton(
          onPressed: () => Get.to(() => const SearchScreen()),
          icon: const Icon(
            Icons.search_rounded,
            color: Colors.white,
          ),
        ),
        const CcCartCounterIcon(
          iconColor: Colors.white,
        ),
        const SizedBox(width: 5),
      ],
    );
  }
}
