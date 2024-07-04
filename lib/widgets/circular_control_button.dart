import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_remote_app/shared/rx_theme_colors.dart';

class CircularControlButton extends StatelessWidget {
  final VoidCallback onUpPressed;
  final VoidCallback onDownPressed;
  final VoidCallback onLeftPressed;
  final VoidCallback onRightPressed;
  CircularControlButton({
    super.key,
    required this.onUpPressed,
    required this.onDownPressed,
    required this.onLeftPressed,
    required this.onRightPressed});

  final RxThemeColors themeColors = Get.find<RxThemeColors>();

  @override
  Widget build(BuildContext context) {

    double screenWidth = Get.width;
    double responsiveOuterHeight;
    double responsiveOuterWidth;
    double responsiveInnerHeight;
    double responsiveInnerWidth;
    if (screenWidth < 360) {
      responsiveOuterHeight = 100;
      responsiveOuterWidth = 100;
      responsiveInnerHeight = 40;
      responsiveInnerWidth = 40;
    } else if (screenWidth < 480) {
      responsiveOuterHeight = 160;
      responsiveOuterWidth = 160;
      responsiveInnerHeight = 90;
      responsiveInnerWidth = 90;
    } else {
      responsiveOuterHeight = 200;
      responsiveOuterWidth = 200;
      responsiveInnerHeight = 100;
      responsiveInnerWidth = 100;
    }

    return Container(
      height: responsiveOuterHeight,
      width: responsiveOuterWidth,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: themeColors.primaryColor.value,
        borderRadius: const BorderRadius.all(Radius.circular(100)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ///Next/Up Icon Button
          GestureDetector(
              onTap: onUpPressed,
            child: Transform.rotate(
              angle: -90 * (3.141592653589793 / 180), // Rotate 90 degrees counterclockwise
              child: Icon(Icons.arrow_forward_ios, color: themeColors.onPrimaryColor.value),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///Left Icon Button
              GestureDetector(
                  onTap: onLeftPressed,
                  child:Transform.rotate(
                    angle: 180 * (3.141592653589793 / 180), // Rotate 90 degrees counterclockwise
                    child: Icon(
                    Icons.arrow_forward_ios_outlined, color: themeColors.onPrimaryColor.value,),
                  ),
              ),
              Container(
                height: responsiveInnerHeight,
                width: responsiveInnerWidth,
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepPurpleAccent,
                      Color(0xff9575CD),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              ///Right Icon Button
              GestureDetector(
                  onTap: onRightPressed,
                  child: Icon(
                    Icons.arrow_forward_ios_outlined, color: themeColors.onPrimaryColor.value,),
              ),
            ],
          ),

          ///Back/Down Icon Button
          GestureDetector(
              onTap: onDownPressed,
            child: Transform.rotate(
              angle: 90 * (3.141592653589793 / 180), // Rotate 90 degrees counterclockwise
              child: Icon(Icons.arrow_forward_ios, color: themeColors.onPrimaryColor.value),
            ),
          )
        ],
      ),
    );
  }
}


