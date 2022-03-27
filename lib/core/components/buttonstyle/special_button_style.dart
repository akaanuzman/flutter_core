import 'package:flutter/material.dart';

class SpecialButtonStyle extends ButtonStyle {
  SpecialButtonStyle({
    required BuildContext context,
    Color? clickColor,
  }) : super(
          overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return clickColor ?? Colors.blue;
              }
              if (states.contains(MaterialState.focused) ||
                  states.contains(MaterialState.pressed)) {
                return Colors.blue;
              }
              return Colors.black;
            },
          ),
        );
}
