import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodorich_customer_app/core/utils/size_utils.dart';
import 'package:foodorich_customer_app/widgets/base_button.dart';

import '../theme/custom_text_style.dart';

class CustomElevatedButton extends BaseButton {
CustomElevatedButton({
Key? key,
this.decoration,
this.leftIcon,
this.rightIcon,
EdgeInsets? margin,
VoidCallback? onTap,
ButtonStyle? buttonStyle,
Alignment? alignment,
TextStyle? buttonTextStyle,
bool? isDisabled,
double? height,
double? width,
required String text,
}) : super(
text: text,
onTap: onTap,
buttonStyle:ElevatedButton.styleFrom(
  primary: Colors.amber
),
isDisabled: isDisabled,
buttonTextStyle: buttonTextStyle,
height: height,
width: width,
alignment: alignment,
margin: margin,
);

final BoxDecoration? decoration;

final Widget? leftIcon;

final Widget? rightIcon;

@override
Widget build(BuildContext context) {
return alignment != null
? Align(
alignment: alignment ?? Alignment.center,
child: buildElevatedButtonWidget,
)
    : buildElevatedButtonWidget;
}

Widget get buildElevatedButtonWidget => Container(
height: this.height ?? 30.v,
width: this.width ?? double.maxFinite,
margin: margin,
decoration: decoration,
child: ElevatedButton(
style: buttonStyle
,
onPressed: isDisabled ?? false ? null : onTap ?? () {},
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
leftIcon ?? const SizedBox.shrink(),
Text(
text,
style: buttonTextStyle ?? CustomTextStyles.bodyMediumGray800,
),
rightIcon ?? const SizedBox.shrink(),
],
),
),
);
}