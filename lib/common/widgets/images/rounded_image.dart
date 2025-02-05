import 'package:flutter/material.dart';
import 'package:udsm_food_point/utils/constants/colors.dart';

class CcRoundedImage extends StatelessWidget {
  const CcRoundedImage({
    super.key,
    this.border,
    this.padding,
    required this.imageUrl,
    this.borderRadius = 16,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadius = true,
    this.backgroundColor = CcColors.white,
    this.fit = BoxFit.contain,
    this.isNetworkImage = false,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            borderRadius: BorderRadius.circular(borderRadius),
            color: backgroundColor),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
