import 'package:get/get.dart';
import 'package:udsm_food_point/features/authentication/screens/3_signup/widgets/signup_form.dart';
import 'package:udsm_food_point/utils/constants/colors.dart';
import 'package:udsm_food_point/utils/constants/sizes.dart';
import 'package:udsm_food_point/utils/constants/text_strings.dart';
import 'package:udsm_food_point/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CcHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
            )),
        iconTheme: IconThemeData(color: dark ? CcColors.white : CcColors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CcSizes.defaultSpace),
          child: Column(
            children: [
              // title
              Text(
                CcTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: CcSizes.spaceBtnSections,
              ),

              // form
              const CcSignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
