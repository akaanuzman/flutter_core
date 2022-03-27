import 'package:flutter/material.dart';

import '../../../core/extensions/app_extensions.dart';

class SpecialButton extends ElevatedButton {
  SpecialButton({
    Key? key,
    void Function()? onTap,
    required BuildContext context,
    String? data,
    Widget? child,
    BorderRadiusGeometry? borderRadius,
    Color? backgroundColor,
    Color? clickColor
  }) : super(
          onPressed: onTap ?? () {},
          child: child ??
              Padding(
                padding: context.verticalPaddingNormal,
                child: Text(data ?? ""),
              ),
          style: _style(
            context,
            borderRadius ?? context.normalBorderRadius,
            backgroundColor ?? Colors.black,
            clickColor ?? Colors.black
          ),
          key: key,
        );

  static ButtonStyle _style(BuildContext context,
          BorderRadiusGeometry borderRadius, Color backgroundColor,Color clickColor) =>
      ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return clickColor.withOpacity(0.2);
            }
            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return clickColor.withOpacity(0.2);
            }
            return Colors.black;
          },
        ),
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: borderRadius),
        ),
      );
}
