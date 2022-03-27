import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../extensions/app_extensions.dart';
import 'skeleton_animation.dart';

class SkeletonCard extends Shimmer {
  SkeletonCard({
    Key? key,
    required BuildContext context,
  }) : super(
          child: _card(context),
        );

  static Card _card(BuildContext context) => Card(
        shape: RoundedRectangleBorder(borderRadius: context.highBorderRadius),
        elevation: 3,
        //TODO: add custom color
        // color: context.blueChalk,
        child: ListTile(
          leading: _leading(context),
          title: _title(context),
          subtitle: _subtitle(context),
        ),
      );

  static Shimmer _leading(BuildContext context) => Shimmer(
        child: CircleAvatar(
            //TODO: add custom color
            // backgroundColor: context.royalPurple,
            ),
      );

  static SkeletonAnimation _title(BuildContext context) => SkeletonAnimation(
        context: context,
        padding: context.verticalPaddingLow,
      );

  static SkeletonAnimation _subtitle(BuildContext context) => SkeletonAnimation(
        context: context,
        padding: EdgeInsets.only(bottom: context.lowValue),
      );
}
