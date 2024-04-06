import 'package:flutter/material.dart';
import 'package:udsm_food_point/common/widgets/appbar/appbar.dart';
import 'package:udsm_food_point/features/shop/screens/order/widgets/order_list.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CcAppBar(
        showBackArrow: true,
        centerTitle: true,
        title:
            Text("My Orders", style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),

        // orders
        child: CcOrderListItems(),
      ),
    );
  }
}
