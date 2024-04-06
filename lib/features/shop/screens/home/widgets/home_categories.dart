import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udsm_food_point/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:udsm_food_point/features/shop/screens/sub_category/subcategories.dart';
import 'package:udsm_food_point/utils/constants/colors.dart';
import 'package:udsm_food_point/utils/constants/image_strings.dart';
import 'package:udsm_food_point/utils/constants/text_strings.dart';
import 'package:udsm_food_point/utils/helpers/helper_functions.dart';

class CcHomeCategories extends StatelessWidget {
  const CcHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CcHelperFunctions.isDarkMode(context);

    return Expanded(
      child: Container(
        height: 80,
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView.builder(
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (_, index) {
            return CcVerticalImageText(
              image: CcImages.teaIcon,
              title: CcTexts.tea,
              backgroundColor:
                  dark ? CcColors.dark.withOpacity(0.9) : CcColors.light,
              onTap: () => Get.to(() => const SubCategoriesScreen()),
            );
          },
        ),
      ),
    );
  }
}
