import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';

class CustomSearchView extends StatelessWidget{
  CustomSearchView({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
  }) : super(
    key: key,
  );

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  // get decoration => null;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: searchViewWidget,
    )
        : searchViewWidget;

  }
  Widget get searchViewWidget => Container(
    width: width ?? double.maxFinite,
    margin: margin,
    child: TextFormField(
      controller: controller,
      focusNode: focusNode ?? FocusNode(),
      autofocus: autofocus!,
      // style: textStyle ?? CustomTextStyles.bodyLargeGray900,
      keyboardType: textInputType,
      maxLines: maxLines ?? 1,
      decoration: decoration,
      validator: validator,
    ),
  );
  InputDecoration get decoration => InputDecoration(
  hintText: hintText ?? "",
  hintStyle: hintStyle ?? CustomTextStyles.bodyLargeGray900,
  prefixIcon: prefix,
  prefixIconConstraints: prefixConstraints,
  suffixIcon: suffix ??
  Padding(
  padding: EdgeInsets.only(
  right: 15,
  ),
  child: IconButton(
  onPressed: () => controller!.clear(),
  icon: Icon(
  Icons.clear,
  color: Colors.grey.shade600,
  ),
  ),
  ),
    suffixIconConstraints: suffixConstraints,
    isDense: true,
    contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 14),
    fillColor: fillColor ?? theme.colorScheme.onPrimaryContainer,
    filled: filled,
    border: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(
            color: appTheme.gray900,
            width: 1,
          ),
        ),
    enabledBorder: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(
            color: appTheme.gray900,
            width: 1,
          ),
        ),
    focusedBorder: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(
            width: 1,
            color: appTheme.gray900,
          ),
        ),
  );





}
