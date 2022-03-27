import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import 'skeleton_container.dart';

class SkeletonAnimation extends Shimmer {
  SkeletonAnimation(
      {required BuildContext context, required EdgeInsetsGeometry padding})
      : super(
          child: Padding(
            padding: padding,
            child: SkeletonContainer(context: context),
          ),
        );
}
