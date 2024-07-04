import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_remote_app/shared/rx_theme_colors.dart';
import 'package:mobile_remote_app/shared/text_styles.dart';

class IncreaseDecreaseButton extends StatelessWidget {
  final String title;
  final VoidCallback onIncreasePressed;
  final VoidCallback onDecreasePressed;
  IncreaseDecreaseButton({
    super.key,
    required this.title,
    required this.onIncreasePressed,
    required this.onDecreasePressed,
    });

  final RxThemeColors themeColors = Get.find<RxThemeColors>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 55,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: themeColors.primaryColor.value,
        borderRadius: const BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ///Increase Button
          IconButton(
              onPressed: onIncreasePressed,
              icon:
              Icon(Icons.add, color: themeColors.onPrimaryColor.value,)),
          ///Title
          Text(title,style: TextStyles.midSizeButtonTextStyle(),),
          ///Decrease Button
          IconButton(
              onPressed: onDecreasePressed,
              icon:
              Icon(Icons.minimize_outlined, color: themeColors.onPrimaryColor.value,)),
        ],
      ),
    );
  }
}

//import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mobile_remote_app/shared/rx_theme_colors.dart';
// import 'package:mobile_remote_app/shared/text_styles.dart';
//
// class IncreaseDecreaseButton extends StatelessWidget {
//   final String title;
//   final VoidCallback onIncreasePressed;
//   final VoidCallback onDecreasePressed;
//   IncreaseDecreaseButton({
//     super.key,
//     required this.title,
//     required this.onIncreasePressed,
//     required this.onDecreasePressed,
//     });
//
//   final RxThemeColors themeColors = Get.find<RxThemeColors>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 130,
//       width: 55,
//       margin: const EdgeInsets.all(5),
//       decoration: BoxDecoration(
//         borderRadius: const BorderRadius.all(Radius.circular(20)),
//         gradient: LinearGradient(
//           colors: [
//             themeColors.whiteColor.value,
//             themeColors.background.value,
//             themeColors.secondaryColor.value
//             // Color(0xff9575CD),
//           ],
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           ///Increase Button
//           IconButton(
//               onPressed: onIncreasePressed,
//               icon:
//               Icon(Icons.add, color: themeColors.blackColor.value, size: 30,)),
//           ///Title
//           Text(title,style: TextStyles.numPadNumberTextStyle(),),
//           ///Decrease Button
//           IconButton(
//               onPressed: onDecreasePressed,
//               icon:
//               Icon(Icons.minimize_outlined, color: themeColors.whiteColor.value, size: 30,)),
//         ],
//       ),
//     );
//   }
// }