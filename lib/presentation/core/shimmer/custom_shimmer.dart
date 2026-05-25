import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/styles/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmer extends StatelessWidget {
  const CustomShimmer({
    super.key,
    required this.child,
    this.baseColor,
    this.highlightColor,
  });
  final Widget child;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? AppColors.extraLightGrey,
      highlightColor: highlightColor ?? Colors.white60,
      child: child,
    );
  }
}
