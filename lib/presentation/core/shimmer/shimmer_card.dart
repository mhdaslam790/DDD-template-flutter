import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/shimmer/custom_shimmer.dart';
import 'package:flutter_template/presentation/core/shimmer/shimmer_skeleton_bar.dart';

class ShimmerCard extends StatelessWidget {
  const ShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomShimmer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerSkeletonBar(),
              ShimmerSkeletonBar(width: 300),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ShimmerSkeletonBar(width: 80),
                  ShimmerSkeletonBar(width: 40),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
