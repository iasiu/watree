import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:watree/config/config.dart';

class WTShimmerCard extends HookWidget {
  const WTShimmerCard({
    Key? key,
    this.height = 100,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) => Card(
        elevation: 6,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Shimmer(
          color: WTColor.shimmer,
          colorOpacity: 1,
          duration: const Duration(milliseconds: 1800),
          child: SizedBox(
            height: height,
            width: double.maxFinite,
          ),
        ),
      );
}
