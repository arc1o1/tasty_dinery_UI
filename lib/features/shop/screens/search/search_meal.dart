import 'package:flutter/material.dart';
import 'package:udsm_food_point/common/widgets/appbar/appbar.dart';
import 'package:udsm_food_point/common/widgets/appbar/tabbar.dart';
import 'package:udsm_food_point/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:udsm_food_point/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:udsm_food_point/features/shop/screens/search/widget/search_tab.dart';
import 'package:udsm_food_point/utils/constants/colors.dart';
import 'package:udsm_food_point/utils/constants/sizes.dart';
import 'package:udsm_food_point/utils/devices/device_utility.dart';
import 'package:udsm_food_point/utils/helpers/helper_functions.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: CcAppBar(
          title: Center(
            // appbar header
            child: Text("Search",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall),
          ),
          actions: [
            // cart icon
            CcCartCounterIcon(
                onPressed: () {},
                iconColor: CcHelperFunctions.isDarkMode(context)
                    ? CcColors.light
                    : CcColors.dark),
            const SizedBox(width: 5),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              // sliver appbar, enabling scrolling vertically
              SliverAppBar(
                  leadingWidth: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: CcHelperFunctions.isDarkMode(context)
                      ? CcColors.dark
                      : Colors.grey.shade300,
                  expandedHeight:
                      CcDeviceUtils.getScreenHeight() / 5.5, // the height

                  // elements are inside a padding widget
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(20),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        // space
                        SizedBox(height: CcSizes.spaceBtnItems_1 / 2),

                        // search bar
                        CcSearchContainer(
                            text: 'Search',
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero),

                        SizedBox(height: CcSizes.spaceBtnItems_2),

                        // featured brands
                        // CcSectionHeading(
                        //     title: 'Featured Brands', onPressed: () {}),

                        // const SizedBox(height: CcSizes.spaceBtnItems_2 / 1.5),

                        // Column(
                        //   children: [
                        //     for (int i = 0; i < 2; i++)
                        //       Container(
                        //         padding: const EdgeInsets.only(bottom: 10),
                        //         child: Row(
                        //           children: [
                        //             CcBrandCard(
                        //                 showBorder: true,
                        //                 width: (CcDeviceUtils.getScreenWidth(
                        //                         context) -
                        //                     40))
                        //           ],
                        //         ),
                        //       ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),

                  // tabs
                  bottom: const CcTabBar(
                    tabs: [
                      Tab(child: Text('Bites')),
                      Tab(child: Text('Breakfast')),
                      Tab(child: Text('Lunch')),
                      Tab(child: Text('Dinner')),
                      Tab(child: Text('Beverage')),
                      Tab(child: Text('Smoothie')),
                    ],
                  ))
            ];
          },

          // body
          body: const TabBarView(
            children: [
              CcSearchTab(),
              CcSearchTab(),
              CcSearchTab(),
              CcSearchTab(),
              CcSearchTab(),
              CcSearchTab(),
            ],
          ),
        ),
      ),
    );
  }
}
