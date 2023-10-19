import 'package:flutter/material.dart';
import 'package:foodorich_customer_app/core/utils/size_utils.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:foodorich_customer_app/theme/app_decoration.dart';
import 'package:foodorich_customer_app/theme/custom_text_style.dart';
import 'package:foodorich_customer_app/theme/theme_helper.dart';
import 'package:foodorich_customer_app/widgets/app_bar/custom_search_view.dart';
import 'package:foodorich_customer_app/core/utils/image_constant.dart';
import 'package:foodorich_customer_app/widgets/custom_elevated_button.dart';
import 'package:foodorich_customer_app/widgets/custom_image_view.dart';
import 'package:foodorich_customer_app/widgets/custom_outlined_button.dart';
// import 'package:foodorich_customer_app/widgets/custom_outlined_button.dart';
import 'package:foodorich_customer_app/widgets/custom_text_form_field.dart';


class Food_Page extends StatefulWidget{
  const Food_Page({Key? key})
      : super(
    key: key,
  );

  @override
  State<Food_Page> createState() => _Food_PageState();
}

class _Food_PageState extends State<Food_Page> {
  @override
  TextEditingController searchController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool get wantKeepAlive => true;

  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(

                child: Column(

                  // mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                                width: 31,
                                height: 24,
                                margin: const EdgeInsets.only(top: 32, left: 20),
                                    child: Image.asset('lib/assets/images/group.jpg'),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Text('FOODORICH'.toUpperCase(),

                                style: const TextStyle(
                                  fontFamily: 'MainFont',
                                  fontSize: 8.9,
                                  fontWeight: FontWeight.normal,


                                ),
                              ),
                            ),
                          ],
                        ),

                                Container(
                                    width: 36,
                                    height: 32,
                                   margin: const EdgeInsets.only(top: 36,right:16),
                                    child: Image.asset('lib/assets/images/cart_logo.png'),),

                      ],
                    ),
                    const SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.only(left: 35,right: 35),
                      child: Card(
                        elevation: 3,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child:ElevatedButton(onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.amber,
                                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5),
                                    ),

                                  ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 2,left: 8,right: 8,bottom: 2),
                                      child: Text('Food Delivery'.toUpperCase(),
                                      style: const TextStyle(
                                        fontStyle:FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                        ),
                                    ),

                      ),
                              ),

                                 Container(
                                   margin: const EdgeInsets.only(right: 32),
                                   child: Text('Grocery'.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black54,
                                ),
                                ),
                                 ),
                            ],
                          ),
                        ),
                    ),
                    SizedBox(height: 8.v),
                     Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.location_searching,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 15.h,
                                  top: 3.v,
                                  bottom: 3.v,
                                ),
                                child: Text(
                                  "Detect location",
                                  style: CustomTextStyles.bodyMediumBluegray900,
                                ),
                              ),
                            ],
                          ),
                       ],
                     ),

                    CustomSearchView(
                      margin: EdgeInsets.only(
                        left: 16.h,
                        top: 32.v,
                        right: 16.h,
                    ),
                      controller:searchController ,
                      hintText: 'Search food',
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(20.h, 15.v, 14.h, 9.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.search2,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 48.v,
                      ),
                      suffix: Container(
                        padding: EdgeInsets.all(7.h),
                        margin: EdgeInsets.fromLTRB(30.h, 6.v, 16.h, 6.v),
                        decoration: BoxDecoration(
                          color: appTheme.amber300,
                          borderRadius: BorderRadius.circular(
                            17.h,
                          ),
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.search,
                        ),
                      ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 48.v,
                        ),
                      ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 32.v,
                        right: 16.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 54.v,
                            width: 172.h,
                            margin: EdgeInsets.only(top: 9.v),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 55.h,
                                      vertical: 11.v,
                                    ),
                                    decoration: AppDecoration.outlineBlack90001
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder14,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 2.v),
                                        Text(
                                          "Biriyani",
                                          style: CustomTextStyles
                                              .bodyMediumBluegray900,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.biryani,
                                  height: 33.v,
                                  width: 48.h,
                                  alignment: Alignment.topRight,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 63.v,
                            width: 174.h,
                            margin: EdgeInsets.only(left: 11.h),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 36.h,
                                      vertical: 12.v,
                                    ),
                                    decoration: AppDecoration.outlineBlack90001
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder14,
                                    ),
                                    child: Text(
                                      "North Indian",
                                      style: CustomTextStyles
                                          .bodyMediumBluegray900,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.north_indian,
                                  height: 47.v,
                                  width: 48.h,
                                  alignment: Alignment.topRight,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 4.v,
                        right: 16.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 54.v,
                            width: 172.h,
                            margin: EdgeInsets.only(top: 11.v),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 52.h,
                                      vertical: 12.v,
                                    ),
                                    decoration: AppDecoration.outlineBlack90001
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder14,
                                    ),
                                    child: Text(
                                      "Chinese",
                                      style: CustomTextStyles
                                          .bodyMediumBluegray900,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.chinese,
                                  height: 33.v,
                                  width: 48.h,
                                  alignment: Alignment.topRight,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 65.v,
                            width: 174.h,
                            margin: EdgeInsets.only(left: 11.h),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 59.h,
                                      vertical: 12.v,
                                    ),
                                    decoration: AppDecoration.outlineBlack90001
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder14,
                                    ),
                                    child: Text(
                                      "Italian",
                                      style: CustomTextStyles
                                          .bodyMediumBluegray900,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.italian,
                                  height: 53.v,
                                  width: 57.h,
                                  alignment: Alignment.topRight,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 12.v,
                        right: 16.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 54.v,
                            width: 172.h,
                            margin: EdgeInsets.only(top: 3.v),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 49.h,
                                      vertical: 12.v,
                                    ),
                                    decoration: AppDecoration.outlineBlack90001
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder14,
                                    ),
                                    child: Text(
                                      "Desssert",
                                      style: CustomTextStyles
                                          .bodyMediumBluegray900,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.desserts,
                                  height: 33.v,
                                  width: 48.h,
                                  alignment: Alignment.topRight,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 57.v,
                            width: 174.h,
                            margin: EdgeInsets.only(left: 11.h),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 59.h,
                                      vertical: 12.v,
                                    ),
                                    decoration: AppDecoration.outlineBlack90001
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder14,
                                    ),
                                    child: Text(
                                      "Italian",
                                      style: CustomTextStyles
                                          .bodyMediumBluegray900,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.italian2,
                                  height: 35.v,
                                  width: 43.h,
                                  alignment: Alignment.topRight,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 32.v,
                        right: 16.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
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
                                    decoration: AppDecoration
                                        .gradientOnPrimaryContainerToRed
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 6.v),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 19.v,
                                              width: 38.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person3,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerLeft,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person2,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person1,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerRight,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant.star ,
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
                                                style:
                                                theme.textTheme.labelLarge,
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
                                          child: SizedBox(
                                            width: 138.h,
                                            child: Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodyMediumGray90013,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 25.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                                  corners: const Corners(
                                                    topLeft:
                                                    Radius.circular(52),
                                                    topRight:
                                                    Radius.circular(52),
                                                    bottomLeft:
                                                    Radius.circular(52),
                                                    bottomRight:
                                                    Radius.circular(52),

                                                  ),

                                                  child: Container(
                                                    height: 101.v,
                                                    width: 104.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                        52.h,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                Alignment.bottomCenter,
                                                child: Container(
                                                  height: 88.v,
                                                  width: 86.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Stack(
                                                    alignment:
                                                    Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .kebab,
                                                        height: 78.v,
                                                        width: 81.h,
                                                        radius: BorderRadius
                                                            .circular(
                                                          40.h,
                                                        ),
                                                        alignment:
                                                        Alignment.topLeft,
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
                                                        alignment: Alignment
                                                            .bottomRight,
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
                          ),
                          SizedBox(
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
                                    decoration: AppDecoration
                                        .gradientOnPrimaryContainerToRed
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 6.v),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 19.v,
                                              width: 38.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person3,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerLeft,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person2,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person1,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerRight,
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
                                                style:
                                                theme.textTheme.labelLarge,
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
                                          child: SizedBox(
                                            width: 138.h,
                                            child: Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodyMediumGray90013,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 25.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                                    begin:Alignment.centerRight,
                                                    end:Alignment.topRight,
                                                    colors: [
                                                      appTheme.red400
                                                          .withOpacity(0),
                                                      appTheme.amber300,
                                                    ],
                                                  ),
                                                  corners: const Corners(
                                                    topLeft:
                                                    Radius.circular(52),
                                                    topRight:
                                                    Radius.circular(52),
                                                    bottomLeft:
                                                    Radius.circular(52),
                                                    bottomRight:
                                                    Radius.circular(52),
                                                  ),
                                                  child: Container(
                                                    height: 101.v,
                                                    width: 104.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                        52.h,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                Alignment.bottomCenter,
                                                child: Container(
                                                  height: 88.v,
                                                  width: 86.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Stack(
                                                    alignment:
                                                    Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .kebab,
                                                        height: 78.v,
                                                        width: 81.h,
                                                        radius: BorderRadius
                                                            .circular(
                                                          40.h,
                                                        ),
                                                        alignment:
                                                        Alignment.topLeft,
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
                                                        alignment: Alignment
                                                            .bottomRight,
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
                                          width: 104.h,
                                          text: "Order Now",
                                          alignment: Alignment.centerRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 32.v,
                        right: 16.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
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
                                    decoration: AppDecoration
                                        .gradientOnPrimaryContainerToRed
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 6.v),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 19.v,
                                              width: 38.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person3,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerLeft,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person2,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person1,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerRight,
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
                                                style:
                                                theme.textTheme.labelLarge,
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
                                          child: SizedBox(
                                            width: 138.h,
                                            child: Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodyMediumGray90013,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 25.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                                    begin:Alignment.centerRight,
                                                    end:Alignment.topRight,
                                                    colors: [
                                                      appTheme.red400
                                                          .withOpacity(0),
                                                      appTheme.amber300,
                                                    ],
                                                  ),
                                                  corners: const Corners(
                                                    topLeft:
                                                    Radius.circular(52),
                                                    topRight:
                                                    Radius.circular(52),
                                                    bottomLeft:
                                                    Radius.circular(52),
                                                    bottomRight:
                                                    Radius.circular(52),
                                                  ),
                                                  child: Container(
                                                    height: 101.v,
                                                    width: 104.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                        52.h,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                Alignment.bottomCenter,
                                                child: Container(
                                                  height: 88.v,
                                                  width: 86.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Stack(
                                                    alignment:
                                                    Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .kebab,
                                                        height: 78.v,
                                                        width: 81.h,
                                                        radius: BorderRadius
                                                            .circular(
                                                          40.h,
                                                        ),
                                                        alignment:
                                                        Alignment.topLeft,
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
                                                          text: '10',

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
                          ),
                          SizedBox(
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
                                    decoration: AppDecoration
                                        .gradientOnPrimaryContainerToRed
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 6.v),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 19.v,
                                              width: 38.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person3,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerLeft,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person2,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person1,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerRight,
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
                                                style:
                                                theme.textTheme.labelLarge,
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
                                          child: SizedBox(
                                            width: 138.h,
                                            child: Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodyMediumGray90013,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 25.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                                    begin:Alignment.centerRight,
                                                    end:Alignment.topRight,
                                                    colors: [
                                                      appTheme.red400
                                                          .withOpacity(0),
                                                      appTheme.amber300,
                                                    ],
                                                  ),
                                                  corners: const Corners(
                                                    topLeft:
                                                    Radius.circular(52),
                                                    topRight:
                                                    Radius.circular(52),
                                                    bottomLeft:
                                                    Radius.circular(52),
                                                    bottomRight:
                                                    Radius.circular(52),
                                                  ),
                                                  child: Container(
                                                    height: 101.v,
                                                    width: 104.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                        52.h,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                Alignment.bottomCenter,
                                                child: Container(
                                                  height: 88.v,
                                                  width: 86.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Stack(
                                                    alignment:
                                                    Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .kebab,
                                                        height: 78.v,
                                                        width: 81.h,
                                                        radius: BorderRadius
                                                            .circular(
                                                          40.h,
                                                        ),
                                                        alignment:
                                                        Alignment.topLeft,
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
                                                        alignment: Alignment
                                                            .bottomRight,
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
                                          width: 104.h,
                                          text: "Order Now",
                                          alignment: Alignment.centerRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 32.v,
                        right: 16.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
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
                                    decoration: AppDecoration
                                        .gradientOnPrimaryContainerToRed
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 6.v),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 19.v,
                                              width: 38.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person3,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerLeft,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person2,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person1,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerRight,
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
                                                style:
                                                theme.textTheme.labelLarge,
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
                                          child: SizedBox(
                                            width: 138.h,
                                            child: Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodyMediumGray90013,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 25.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                                    begin:Alignment.centerRight,
                                                    end:Alignment.topRight,
                                                    colors: [
                                                      appTheme.red400
                                                          .withOpacity(0),
                                                      appTheme.amber300,
                                                    ],
                                                  ),
                                                  corners: const Corners(
                                                    topLeft:
                                                    Radius.circular(52),
                                                    topRight:
                                                    Radius.circular(52),
                                                    bottomLeft:
                                                    Radius.circular(52),
                                                    bottomRight:
                                                    Radius.circular(52),
                                                  ),
                                                  child: Container(
                                                    height: 101.v,
                                                    width: 104.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                        52.h,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                Alignment.bottomCenter,
                                                child: Container(
                                                  height: 88.v,
                                                  width: 86.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Stack(
                                                    alignment:
                                                    Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .kebab,
                                                        height: 78.v,
                                                        width: 81.h,
                                                        radius: BorderRadius
                                                            .circular(
                                                          40.h,
                                                        ),
                                                        alignment:
                                                        Alignment.topLeft,
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
                                                        text: '10',

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
                          ),
                          SizedBox(
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
                                    decoration: AppDecoration
                                        .gradientOnPrimaryContainerToRed
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 6.v),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 19.v,
                                              width: 38.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person3,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerLeft,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person2,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person1,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerRight,
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
                                                style:
                                                theme.textTheme.labelLarge,
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
                                          child: SizedBox(
                                            width: 138.h,
                                            child: Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodyMediumGray90013,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 25.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                                    begin:Alignment.centerRight,
                                                    end:Alignment.topRight,
                                                    colors: [
                                                      appTheme.red400
                                                          .withOpacity(0),
                                                      appTheme.amber300,
                                                    ],
                                                  ),
                                                  corners: const Corners(
                                                    topLeft:
                                                    Radius.circular(52),
                                                    topRight:
                                                    Radius.circular(52),
                                                    bottomLeft:
                                                    Radius.circular(52),
                                                    bottomRight:
                                                    Radius.circular(52),
                                                  ),
                                                  child: Container(
                                                    height: 101.v,
                                                    width: 104.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                        52.h,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                Alignment.bottomCenter,
                                                child: Container(
                                                  height: 88.v,
                                                  width: 86.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Stack(
                                                    alignment:
                                                    Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .kebab,
                                                        height: 78.v,
                                                        width: 81.h,
                                                        radius: BorderRadius
                                                            .circular(
                                                          40.h,
                                                        ),
                                                        alignment:
                                                        Alignment.topLeft,
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
                                                        alignment: Alignment
                                                            .bottomRight,
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
                                          width: 104.h,
                                          text: "Order Now",
                                          alignment: Alignment.centerRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 32.v,
                        right: 16.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
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
                                    decoration: AppDecoration
                                        .gradientOnPrimaryContainerToRed
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 6.v),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 19.v,
                                              width: 38.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person3,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerLeft,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person2,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person1,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerRight,
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
                                                style:
                                                theme.textTheme.labelLarge,
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
                                          child: SizedBox(
                                            width: 138.h,
                                            child: Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodyMediumGray90013,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 25.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                                    begin:Alignment.centerRight,
                                                    end:Alignment.topRight,
                                                    colors: [
                                                      appTheme.red400
                                                          .withOpacity(0),
                                                      appTheme.amber300,
                                                    ],
                                                  ),
                                                  corners: const Corners(
                                                    topLeft:
                                                    Radius.circular(52),
                                                    topRight:
                                                    Radius.circular(52),
                                                    bottomLeft:
                                                    Radius.circular(52),
                                                    bottomRight:
                                                    Radius.circular(52),
                                                  ),
                                                  child: Container(
                                                    height: 101.v,
                                                    width: 104.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                        52.h,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                Alignment.bottomCenter,
                                                child: Container(
                                                  height: 88.v,
                                                  width: 86.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Stack(
                                                    alignment:
                                                    Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .kebab,
                                                        height: 78.v,
                                                        width: 81.h,
                                                        radius: BorderRadius
                                                            .circular(
                                                          40.h,
                                                        ),
                                                        alignment:
                                                        Alignment.topLeft,
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
                                                        text: '10',

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
                          ),
                          SizedBox(
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
                                    decoration: AppDecoration
                                        .gradientOnPrimaryContainerToRed
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 6.v),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 19.v,
                                              width: 38.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person3,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerLeft,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person2,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person1,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerRight,
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
                                                style:
                                                theme.textTheme.labelLarge,
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
                                          child: SizedBox(
                                            width: 138.h,
                                            child: Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodyMediumGray90013,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 25.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                                    begin:Alignment.centerRight,
                                                    end:Alignment.topRight,
                                                    colors: [
                                                      appTheme.red400
                                                          .withOpacity(0),
                                                      appTheme.amber300,
                                                    ],
                                                  ),
                                                  corners: const Corners(
                                                    topLeft:
                                                    Radius.circular(52),
                                                    topRight:
                                                    Radius.circular(52),
                                                    bottomLeft:
                                                    Radius.circular(52),
                                                    bottomRight:
                                                    Radius.circular(52),
                                                  ),
                                                  child: Container(
                                                    height: 101.v,
                                                    width: 104.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                        52.h,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                Alignment.bottomCenter,
                                                child: Container(
                                                  height: 88.v,
                                                  width: 86.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Stack(
                                                    alignment:
                                                    Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .kebab,
                                                        height: 78.v,
                                                        width: 81.h,
                                                        radius: BorderRadius
                                                            .circular(
                                                          40.h,
                                                        ),
                                                        alignment:
                                                        Alignment.topLeft,
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
                                                        alignment: Alignment
                                                            .bottomRight,
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
                                          width: 104.h,
                                          text: "Order Now",
                                          alignment: Alignment.centerRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 32.v,
                        right: 16.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
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
                                    decoration: AppDecoration
                                        .gradientOnPrimaryContainerToRed
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 6.v),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 19.v,
                                              width: 38.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person3,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerLeft,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person2,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person1,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerRight,
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
                                                style:
                                                theme.textTheme.labelLarge,
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
                                          child: SizedBox(
                                            width: 138.h,
                                            child: Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodyMediumGray90013,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 25.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                                    begin:Alignment.centerRight,
                                                    end:Alignment.topRight,
                                                    colors: [
                                                      appTheme.red400
                                                          .withOpacity(0),
                                                      appTheme.amber300,
                                                    ],
                                                  ),
                                                  corners: const Corners(
                                                    topLeft:
                                                    Radius.circular(52),
                                                    topRight:
                                                    Radius.circular(52),
                                                    bottomLeft:
                                                    Radius.circular(52),
                                                    bottomRight:
                                                    Radius.circular(52),
                                                  ),
                                                  child: Container(
                                                    height: 101.v,
                                                    width: 104.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                        52.h,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                Alignment.bottomCenter,
                                                child: Container(
                                                  height: 88.v,
                                                  width: 86.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Stack(
                                                    alignment:
                                                    Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .kebab,
                                                        height: 78.v,
                                                        width: 81.h,
                                                        radius: BorderRadius
                                                            .circular(
                                                          40.h,
                                                        ),
                                                        alignment:
                                                        Alignment.topLeft,
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
                                                        text: '10',

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
                          ),
                          SizedBox(
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
                                    decoration: AppDecoration
                                        .gradientOnPrimaryContainerToRed
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 6.v),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 19.v,
                                              width: 38.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person3,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerLeft,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person2,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .person1,
                                                    height: 19.adaptSize,
                                                    width: 19.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                      9.h,
                                                    ),
                                                    alignment:
                                                    Alignment.centerRight,
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
                                                style:
                                                theme.textTheme.labelLarge,
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
                                          child: SizedBox(
                                            width: 138.h,
                                            child: Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodyMediumGray90013,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 25.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                                    begin:Alignment.centerRight,
                                                    end:Alignment.topRight,
                                                    colors: [
                                                      appTheme.red400
                                                          .withOpacity(0),
                                                      appTheme.amber300,
                                                    ],
                                                  ),
                                                  corners: const Corners(
                                                    topLeft:
                                                    Radius.circular(52),
                                                    topRight:
                                                    Radius.circular(52),
                                                    bottomLeft:
                                                    Radius.circular(52),
                                                    bottomRight:
                                                    Radius.circular(52),
                                                  ),
                                                  child: Container(
                                                    height: 101.v,
                                                    width: 104.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                        52.h,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                Alignment.bottomCenter,
                                                child: Container(
                                                  height: 88.v,
                                                  width: 86.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Stack(
                                                    alignment:
                                                    Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .kebab,
                                                        height: 78.v,
                                                        width: 81.h,
                                                        radius: BorderRadius
                                                            .circular(
                                                          40.h,
                                                        ),
                                                        alignment:
                                                        Alignment.topLeft,
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
                                                        alignment: Alignment
                                                            .bottomRight,
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
                                          width: 104.h,
                                          text: "Order Now",
                                          alignment: Alignment.centerRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 32.v,
                        right: 16.h,
                      ),

                      child: ClipRRect(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
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
                                      decoration: AppDecoration
                                          .gradientOnPrimaryContainerToRed
                                          .copyWith(
                                        borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 6.v),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 19.v,
                                                width: 38.h,
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .person3,
                                                      height: 19.adaptSize,
                                                      width: 19.adaptSize,
                                                      radius:
                                                      BorderRadius.circular(
                                                        9.h,
                                                      ),
                                                      alignment:
                                                      Alignment.centerLeft,
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .person2,
                                                      height: 19.adaptSize,
                                                      width: 19.adaptSize,
                                                      radius:
                                                      BorderRadius.circular(
                                                        9.h,
                                                      ),
                                                      alignment: Alignment.center,
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .person1,
                                                      height: 19.adaptSize,
                                                      width: 19.adaptSize,
                                                      radius:
                                                      BorderRadius.circular(
                                                        9.h,
                                                      ),
                                                      alignment:
                                                      Alignment.centerRight,
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
                                                  style:
                                                  theme.textTheme.labelLarge,
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
                                            child: SizedBox(
                                              width: 138.h,

                                                child: Text(
                                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                                                  maxLines: 5,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: CustomTextStyles
                                                      .bodyMediumGray90013,
                                                ),
                                              ),
                                            ),
                                          
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 25.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                      begin:Alignment.centerRight,
                                                      end:Alignment.topRight,
                                                      colors: [
                                                        appTheme.red400
                                                            .withOpacity(0),
                                                        appTheme.amber300,
                                                      ],
                                                    ),
                                                    corners: const Corners(
                                                      topLeft:
                                                      Radius.circular(52),
                                                      topRight:
                                                      Radius.circular(52),
                                                      bottomLeft:
                                                      Radius.circular(52),
                                                      bottomRight:
                                                      Radius.circular(52),
                                                    ),
                                                    child: Container(
                                                      height: 101.v,
                                                      width: 104.h,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                          52.h,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                  Alignment.bottomCenter,
                                                  child: Container(
                                                    height: 88.v,
                                                    width: 86.h,
                                                    margin: EdgeInsets.only(
                                                        bottom: 1.v),
                                                    child: Stack(
                                                      alignment:
                                                      Alignment.bottomRight,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .kebab,
                                                          height: 78.v,
                                                          width: 81.h,
                                                          radius: BorderRadius
                                                              .circular(
                                                            40.h,
                                                          ),
                                                          alignment:
                                                          Alignment.topLeft,
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
                                                          text: '10',

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
                            ),
                            SizedBox(
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
                                      decoration: AppDecoration
                                          .gradientOnPrimaryContainerToRed
                                          .copyWith(
                                        borderRadius:
                                        BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 6.v),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 19.v,
                                                width: 38.h,
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .person3,
                                                      height: 19.adaptSize,
                                                      width: 19.adaptSize,
                                                      radius:
                                                      BorderRadius.circular(
                                                        9.h,
                                                      ),
                                                      alignment:
                                                      Alignment.centerLeft,
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .person2,
                                                      height: 19.adaptSize,
                                                      width: 19.adaptSize,
                                                      radius:
                                                      BorderRadius.circular(
                                                        9.h,
                                                      ),
                                                      alignment: Alignment.center,
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .person1,
                                                      height: 19.adaptSize,
                                                      width: 19.adaptSize,
                                                      radius:
                                                      BorderRadius.circular(
                                                        9.h,
                                                      ),
                                                      alignment:
                                                      Alignment.centerRight,
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
                                                  style:
                                                  theme.textTheme.labelLarge,
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
                                            child: SizedBox(
                                              width: 138.h,
                                              child: Text(
                                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                                                maxLines: 4,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .bodyMediumGray90013,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 25.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                      begin:Alignment.centerRight,
                                                      end:Alignment.topRight,
                                                      colors: [
                                                        appTheme.red400
                                                            .withOpacity(0),
                                                        appTheme.amber300,
                                                      ],
                                                    ),
                                                    corners: const Corners(
                                                      topLeft:
                                                      Radius.circular(52),
                                                      topRight:
                                                      Radius.circular(52),
                                                      bottomLeft:
                                                      Radius.circular(52),
                                                      bottomRight:
                                                      Radius.circular(52),
                                                    ),
                                                    child: Container(
                                                      height: 101.v,
                                                      width: 104.h,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                          52.h,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                  Alignment.bottomCenter,
                                                  child: Container(
                                                    height: 88.v,
                                                    width: 86.h,
                                                    margin: EdgeInsets.only(
                                                        bottom: 1.v),
                                                    child: Stack(
                                                      alignment:
                                                      Alignment.bottomRight,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .kebab,
                                                          height: 78.v,
                                                          width: 81.h,
                                                          radius: BorderRadius
                                                              .circular(
                                                            40.h,
                                                          ),
                                                          alignment:
                                                          Alignment.topLeft,
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
                                                          alignment: Alignment
                                                              .bottomRight,
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
                                            width: 104.h,
                                            text: "Order Now",
                                            alignment: Alignment.centerRight,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Opacity(
                      opacity: 0.8,
                      child: Text(
                        "See all",
                        style: CustomTextStyles.bodyMediumGray90013,
                      ),
                    ),
                    SizedBox(height: 31.v),
                    Container(
                      padding: EdgeInsets.all(30.h),
                      decoration: AppDecoration.fillOnPrimaryContainer,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 267.h,
                            margin: EdgeInsets.only(
                              left: 5.h,
                              top: 16.v,
                              right: 58.h,
                            ),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 5.h,
                              top: 16.v,
                            ),
                            child:
                                CustomImageView(
                                  imagePath: ImageConstant.social,
                                  height: 23.v,
                                  width: 101.h,
                                ),

                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 5.h,
                              top: 26.v,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "About Us",
                                      style: theme.textTheme.titleSmall,
                                    ),
                                    SizedBox(height: 26.v),
                                    Text(
                                      "About Us",
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                    SizedBox(height: 16.v),
                                    Text(
                                      "Service Us",
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                    SizedBox(height: 16.v),
                                    Text(
                                      "Contact",
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                    SizedBox(height: 17.v),
                                    Text(
                                      "Company",
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 37.h),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Company",
                                        style: theme.textTheme.titleSmall,
                                      ),
                                      SizedBox(height: 26.v),
                                      Text(
                                        "Partnership",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                      SizedBox(height: 14.v),
                                      Text(
                                        "Terms of Use",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                      SizedBox(height: 17.v),
                                      Text(
                                        "Privacy",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                      SizedBox(height: 16.v),
                                      Text(
                                        "Sitemap",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 2.h,
                              top: 24.v,
                            ),
                            child: Text(
                              "Get in touch",
                              style: CustomTextStyles.titleMediumPrimary,
                            ),
                          ),
                          Container(
                            width: 267.h,
                            margin: EdgeInsets.only(
                              left: 2.h,
                              top: 16.v,
                              right: 61.h,
                            ),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          CustomTextFormField(
                            controller: emailController,

                            margin: EdgeInsets.only(
                              left: 2.h,
                              top: 12.v,
                            ),
                            hintText: "Email",
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 28.h,
                              vertical: 11.v,
                            ),
                            borderDecoration: TextFormFieldStyleHelper.fillGray,
                            filled: true,
                            fillColor: appTheme.gray900,
                          ),
                          SizedBox(height: 11.v),
                          CustomElevatedButton(
                            height: 48.v,
                            text: "Subscribe",
                            buttonTextStyle: CustomTextStyles.titleSmallGray800,
                          ),
                        ],
                      ),
                    )


                ],
                ),

            ),
          ),
      ),
    );
  }
}