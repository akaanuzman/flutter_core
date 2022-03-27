import 'package:flutter/material.dart';

class PurpleBoldText extends Text {
  PurpleBoldText({
    Key? key,
    required String data,
    required BuildContext context,
  }) : super(
          data,
          key: key,
          style: TextStyle(
            //TODO: add custom color
            // color: context.royalPurple,
            fontWeight: FontWeight.bold,
          ),
        );
}
