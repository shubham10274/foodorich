import 'package:flutter/cupertino.dart';
import 'package:foodorich_customer_app/core/utils/size_utils.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:foodorich_customer_app/widgets/custom_outlined_button.dart';
import '../core/utils/image_constant.dart';
import '../theme/app_decoration.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import 'custom_elevated_button.dart';
import 'custom_image_view.dart';
import 'custom_outlined_button.dart';

class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.v,
      width: 160.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 11.v),
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 29.v,
              ),
              decoration:
              AppDecoration.gradientOnPrimaryContainerToRed.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 6.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 19.v,
                        width: 38.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.person3,
                              height: 19.adaptSize,
                              width: 19.adaptSize,
                              radius: BorderRadius.circular(
                                9.h,
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.person2,
                              height: 19.adaptSize,
                              width: 19.adaptSize,
                              radius: BorderRadius.circular(
                                9.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.person1,
                              height: 19.adaptSize,
                              width: 19.adaptSize,
                              radius: BorderRadius.circular(
                                9.h,
                              ),
                              alignment: Alignment.centerRight,
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.star,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        radius: BorderRadius.circular(
                          1.h,
                        ),
                        margin: EdgeInsets.only(
                          left: 5.h,
                          top: 2.v,
                          bottom: 2.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 2.v,
                        ),
                        child: Text(
                          "(4.5)",
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "Kebab",
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 8.v),
                  Opacity(
                    opacity: 0.8,
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyMediumGray90013,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 101.v,
                    width: 104.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: OutlineGradientButton(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              top: 6.v,
                              right: 6.h,
                              bottom: 6.v,
                            ),
                            strokeWidth: 6.h,
                            gradient: LinearGradient(
                              begin:
                              Alignment. centerRight,
                              end: Alignment.topRight ,
                              colors: [
                                appTheme.red400
                                    .withOpacity(0),
                                appTheme.amber300,
                              ],
                            ),
                            corners: Corners(
                              topLeft: Radius.circular(52),
                              topRight: Radius.circular(52),
                              bottomLeft: Radius.circular(52),
                              bottomRight: Radius.circular(52),
                            ),
                            child: Container(
                              height: 101.v,
                              width: 104.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  52.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 88.v,
                            width: 86.h,
                            margin: EdgeInsets.only(bottom: 1.v),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                  imagePath:
                                  ImageConstant.kebab,
                                  height: 78.v,
                                  width: 81.h,
                                  radius: BorderRadius.circular(
                                    40.h,
                                  ),
                                  alignment: Alignment.topLeft,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.ellipse,
                                  width:40.h,
                                  height: 39.v,
                                  alignment: Alignment.bottomRight,
                                ),

                                CustomOutlinedButton(
                                  imagePath: ImageConstant.ellipse,
                                  width: 40.h,
                                  text: "10",
                                  alignment: Alignment.bottomRight,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 129.v),
                  CustomElevatedButton(
                    width: 103.h,
                    text: "Order Now",
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}