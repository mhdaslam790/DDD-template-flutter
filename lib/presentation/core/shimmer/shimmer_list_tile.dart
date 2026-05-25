import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/shimmer/custom_shimmer.dart';
import 'package:flutter_template/presentation/core/shimmer/shimmer_skeleton_bar.dart';
import 'package:flutter_template/presentation/core/shimmer/shimmer_skeleton_circle.dart';

class ShimmerListTile extends StatelessWidget {
  const ShimmerListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      minLeadingWidth: 0,
      title: CustomShimmer(
        child: Row(
          children: [
            ShimmerSkeletonCircle(radius: 50),
            SizedBox(width: 14),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerSkeletonBar(width: 150),
                  SizedBox(height: 5),
                  ShimmerSkeletonBar(width: 80),
                ],
              ),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ShimmerSkeletonBar(width: 50),
                SizedBox(height: 5),
                ShimmerSkeletonBar(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
