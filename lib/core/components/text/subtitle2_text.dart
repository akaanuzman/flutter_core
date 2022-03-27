import 'package:flutter/material.dart';

import '../../../core/extensions/app_extensions.dart';

class Subtitle2Text extends Text {
  Subtitle2Text({
    Key? key,
    required BuildContext context,
    required String data,
    FontWeight? fontWeight,
    double? fontSize,
    String? fontFamily,
    Color? color,
  }) : super(
          data,
          key: key,
          style: context.textTheme.subtitle2!.copyWith(
            fontWeight: fontWeight,
            fontSize: fontSize,
            fontFamily: fontFamily,
            color: color
          ),
        );
}
