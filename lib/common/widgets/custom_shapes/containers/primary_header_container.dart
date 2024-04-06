import 'package:flutter/material.dart';
import 'package:udsm_food_point/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:udsm_food_point/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:udsm_food_point/utils/constants/colors.dart';
import 'package:udsm_food_point/utils/devices/device_utility.dart';
import 'package:udsm_food_point/utils/helpers/helper_functions.dart';

class CcPrimaryHeaderContainer extends StatelessWidget {
  const CcPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final dark = CcHelperFunctions.isDarkMode(context);

    return CcCurvedEdgeWidget(
      child: Container(
        color: Colors.blue.shade700,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: CcDeviceUtils.getScreenHeight() * .31,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CcCircularContainer(
                    backgroundColor: dark
                        ? CcColors.textWhite.withOpacity(0.2)
                        : CcColors.textWhite.withOpacity(0.1)),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CcCircularContainer(
                    backgroundColor: dark
                        ? CcColors.textWhite.withOpacity(0.2)
                        : CcColors.textWhite.withOpacity(0.1)),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
