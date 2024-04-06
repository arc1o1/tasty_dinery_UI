import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udsm_food_point/features/shop/screens/cart/cart.dart';
import 'package:udsm_food_point/utils/constants/colors.dart';

class CcCartCounterIcon extends StatelessWidget {
  const CcCartCounterIcon({
    super.key,
    this.onPressed,
    required this.iconColor,
  });

  final VoidCallback? onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () => Get.to(() => const CartScreen()),
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 17,
            height: 17,
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: CcColors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}
