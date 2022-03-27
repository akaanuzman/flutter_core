import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/extensions/app_extensions.dart';

class AppTextFormField extends TextFormField {
  AppTextFormField({
    Key? key,
    required BuildContext context,
    String? labelText,
    TextStyle? labelStyle,
    String? hintText,
    TextStyle? hintStyle,
    String? initialValue,
    String? Function(String?)? validator,
    Function(String?)? onSaved,
    Function(String)? onChanged,
    bool saveAttempted = false,
    TextInputAction textInputAction = TextInputAction.next,
    TextInputType? keyboardType,
    bool obscureText = false,
    EdgeInsetsGeometry? contentPadding,
    IconButton? suffixIcon,
    IconData? prefixIcon,
    Widget? prefix,
    Widget? suffix,
    String? errorText,
    List<TextInputFormatter>? inputFormatters,
    OutlineInputBorder? enabledBorder,
    OutlineInputBorder? focusedBorder,
    TextEditingController? controller,
    Color? cursorColor,
    bool? filled,
    Color? fillColor,
    bool? enabled,
  }) : super(
          enabled: enabled,
          initialValue: initialValue,
          autovalidateMode: saveAttempted
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          controller: controller,
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          obscureText: obscureText,
          inputFormatters: inputFormatters,
          cursorColor: cursorColor,
          decoration: InputDecoration(
            filled: filled ?? false,
            fillColor: fillColor,
            contentPadding: contentPadding,
            prefix: prefix,
            suffix: suffix,
            labelText: labelText,
            labelStyle: labelStyle ??
                context.textTheme.subtitle1!.copyWith(
                  //TODO: add custom color
                  // color: context.royalPurple,
                  fontWeight: FontWeight.w600,
                ),
            hintText: hintText,
            hintStyle: hintStyle ??
                context.textTheme.subtitle1!.copyWith(
                  //TODO: add custom color
                  // color: context.royalPurple,
                  fontWeight: FontWeight.w600,
                ),
            suffixIcon: suffixIcon,
            prefixIcon: Icon(
              prefixIcon,
              //TODO: add custom color
              // color: context.royalPurple,
            ),
            errorText: errorText,
            enabledBorder: enabledBorder,
            focusedBorder: focusedBorder,
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: context.lowBorderRadius,
              borderSide: const BorderSide(color: Colors.red),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: context.lowBorderRadius,
              borderSide: const BorderSide(color: Colors.red),
            ),
          ),
          style: context.textTheme.subtitle1!.copyWith(
            fontWeight: FontWeight.w600,
            //TODO: add custom color
            // color: context.royalPurple,
          ),
          onSaved: onSaved,
          onChanged: onChanged,
          validator: validator,
          textAlign: TextAlign.left,
          key: key,
        );
}
