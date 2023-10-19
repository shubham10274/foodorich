import 'package:flutter/material.dart';
import 'package:foodorich_customer_app/core/utils/size_utils.dart';
import 'package:foodorich_customer_app/theme/app_decoration.dart';
import 'package:foodorich_customer_app/theme/custom_text_style.dart';
import 'package:foodorich_customer_app/theme/theme_helper.dart';
import 'package:foodorich_customer_app/widgets/app_bar/custom_search_view.dart';
import 'package:foodorich_customer_app/widgets/custom_image_view.dart';
import 'package:foodorich_customer_app/widgets/userprofile_item_widget.dart';

import 'core/utils/image_constant.dart';

class RestaurantPage extends StatefulWidget{
  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  TextEditingController searchController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  bool get wantKeepAlive => true;
  Widget build(BuildContext context) {
    // mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              // SizedBox(height: 8.v),
              // Column(
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         CustomImageView(
              //           imagePath: ImageConstant.location_searching,
              //           height: 24.adaptSize,
              //           width: 24.adaptSize,
              //         ),
              //         Padding(
              //           padding: EdgeInsets.only(
              //             left: 15.h,
              //             top: 3.v,
              //             bottom: 3.v,
              //           ),
              //           child: Text(
              //             "Detect location",
              //             style: CustomTextStyles.bodyMediumBluegray900,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
              SizedBox(height: 8.v),
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
              SizedBox(height: 32.v),
              SizedBox(
                height: 216.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.restaurant,
                      height: 216.v,
                      width: 390.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.h,
                          vertical: 22.v,
                        ),
                        decoration: AppDecoration.fillGray,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 9.h),
                              child: Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "The Sonnet ",
                                    style: CustomTextStyles
                                        .headlineSmallOnPrimaryContainer,
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    imagePath: ImageConstant.star,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    radius: BorderRadius.circular(
                                      1.h,
                                    ),
                                    margin: EdgeInsets.only(
                                      top: 3.v,
                                      bottom: 6.v,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 12.h,
                                      top: 5.v,
                                      bottom: 7.v,
                                    ),
                                    child: Text(
                                      "(4.8)",
                                      style: CustomTextStyles
                                          .titleSmallGray5001Medium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 3.h,
                                top: 6.v,
                              ),
                              child: Text(
                                "K Road, Bistupur, Jamshedpur 831001",
                                style:
                                CustomTextStyles.titleMediumGray5001,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 3.h,
                                top: 17.v,
                              ),
                              child: Text(
                                "Spanish, thai, chinese and much more.",
                                style:
                                CustomTextStyles.bodyMediumGray5001,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 3.h,
                                top: 24.v,
                                right: 66.h,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: CustomImageView(
                                      imagePath: ImageConstant.online_order,
                                      height: 14.v,
                                      width: 20.h,
                                      margin: EdgeInsets.only(bottom: 4.v),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.h),
                                    child: Text(
                                      "Online Order",
                                      style: CustomTextStyles
                                          .labelLargeGray5001,
                                    ),
                                  ),
                                  Spacer(),
                                  Expanded(
                                    child: CustomImageView(
                                      imagePath: ImageConstant.Service,
                                      height: 14.v,
                                      width: 20.h,
                                      margin: EdgeInsets.only(bottom: 3.v),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16.h,
                                      top: 2.v,
                                    ),
                                    child: Text(
                                      "24/7 Service",
                                      style: CustomTextStyles
                                          .labelLargeGray5001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  3.h, 12.v, 58.h, 7.v),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: CustomImageView(
                                      imagePath: ImageConstant.Super_Chef,
                                      height: 14.v,
                                      width: 20.h,
                                      margin: EdgeInsets.only(bottom: 4.v),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16.h,
                                      top: 2.v,
                                    ),
                                    child: Text(
                                      "Super Chef",
                                      style: CustomTextStyles
                                          .labelLargeGray5001,
                                    ),
                                  ),
                                  Spacer(),
                                  Expanded(
                                    child: CustomImageView(
                                      imagePath: ImageConstant.Super_Chef,
                                      height: 14.v,
                                      width: 20.h,
                                      margin: EdgeInsets.only(bottom: 4.v),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.h),
                                    child: Text(
                                      "Clean Kitchen",
                                      style: CustomTextStyles
                                          .labelLargeGray5001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 34.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Today ",
                      style: CustomTextStyles.headlineMediumGray900,
                    ),
                    TextSpan(
                      text: "special",
                      style: CustomTextStyles.headlineMediumPrimary,
                    ),
                    TextSpan(
                      text: " offers",
                      style: CustomTextStyles.headlineMediumGray900,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              Opacity(
                opacity: 0.8,
                child: Container(
                  width: 324.h,
                  margin: EdgeInsets.only(
                    left: 33.h,
                    top: 12.v,
                    right: 32.h,
                  ),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyLargeGray900_1,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 29.v,
                  right: 16.h,
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 261.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 36.h,
                    crossAxisSpacing: 36.h,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return UserprofileItemWidget();
                  },
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
              SizedBox(height: 33.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Explore ",
                      style: CustomTextStyles.headlineMediumGray900,
                    ),
                    TextSpan(
                      text: "sonnet’s recipe",
                      style: CustomTextStyles.headlineMediumPrimary,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 22.h,
                  top: 29.v,
                  right: 22.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 58.v,
                      width: 164.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: EdgeInsets.only(right: 1.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 68.h,
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
                                    "Veg",
                                    style: CustomTextStyles
                                        .bodyMediumBluegray900,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.veg,
                            height: 33.adaptSize,
                            width: 33.adaptSize,
                            alignment: Alignment.topRight,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 58.v,
                      width: 163.h,
                      margin: EdgeInsets.only(left: 19.h),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 51.h,
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
                                    "Non Veg",
                                    style: CustomTextStyles
                                        .bodyMediumBluegray900,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.non_veg,
                            height: 32.v,
                            width: 33.h,
                            alignment: Alignment.topRight,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              ]
          ),
        )
      ),

      ),
    );
  }
}