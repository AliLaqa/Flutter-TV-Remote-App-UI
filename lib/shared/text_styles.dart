import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_remote_app/shared/rx_theme_colors.dart';

class TextStyles {
  ///Theme colors instance
  static RxThemeColors themeColors = Get.find<RxThemeColors>();

  static TextStyle appBarTitleStyle() {
    return TextStyle(
        color: themeColors.onPrimaryColor.value,
        fontWeight: FontWeight.bold,
        fontSize: 22,
    letterSpacing: 9);
  }

  ///With responsive TextSize
  static TextStyle outlinedButtonTextStyle() {
    double screenWidth = Get.width;
    double responsiveFontSize;

    if (screenWidth < 360) {
      responsiveFontSize = 13;
    } else if (screenWidth < 480) {
      responsiveFontSize = 15;
    } else {
      responsiveFontSize = 18;
    }
    return TextStyle(
        color: themeColors.onPrimaryColor.value,
        fontWeight: FontWeight.bold,
        fontSize: responsiveFontSize);
  }

  static TextStyle midSizeButtonTextStyle() {
    double screenWidth = Get.width;
    double responsiveFontSize;
    if (screenWidth < 360) {
      responsiveFontSize = 14;
    } else if (screenWidth < 480) {
      responsiveFontSize = 18;
    } else {
      responsiveFontSize = 20;
    }
    return TextStyle(
      color: themeColors.onPrimaryColor.value,
      fontWeight: FontWeight.bold,
      fontSize: responsiveFontSize,
      overflow: TextOverflow.clip,
    );
  }

  static TextStyle numPadNumberTextStyle() {
    double screenWidth = Get.width;
    double responsiveFontSize;
    if (screenWidth < 360) {
      responsiveFontSize = 14;
    } else if (screenWidth < 480) {
      responsiveFontSize = 18;
    } else {
      responsiveFontSize = 20;
    }
    return TextStyle(
      fontSize: responsiveFontSize,
      color: themeColors.whiteColor.value,
      fontWeight: FontWeight.w400,
      overflow: TextOverflow.clip,

    );
  }

  static TextStyle numPadTextTextStyle() {
    return TextStyle(
      fontSize: 13,
      color: themeColors.onPrimaryColor.value,
      fontWeight: FontWeight.w400,
      overflow: TextOverflow.clip,

    );
  }

  static TextStyle secondaryTextStyle(){
    return TextStyle(
        color: themeColors.secondaryColor.value,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.clip);
  }

  static TextStyle inputFieldTextStyle() {
    return TextStyle(
      fontSize: 18,
      color: themeColors.onBackground.value,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic,
      overflow: TextOverflow.clip,
    );
  }

  static TextStyle headingTextStyle() {
    return TextStyle(
      color: themeColors.onPrimaryColor.value,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      overflow: TextOverflow.ellipsis,
    );
  }

  static TextStyle errorTextStyle() {
    return TextStyle(
        color: themeColors.onError.value,
        fontSize: 15,
        fontStyle: FontStyle.italic,
        overflow: TextOverflow.clip);
  }

  // static TextStyle headings() {
  //   return TextStyle(
  //       color: themeColors.,
  //       fontWeight: FontWeight.bold,
  //       fontSize: 20,
  //       overflow: TextOverflow.clip,
  //       shadows:[
  //         Shadow(
  //           color: themeColors.tertiaryColor.value,
  //           offset: Offset(1, -1),
  //           blurRadius: 2,
  //         )
  //       ]);
  // }
  //
  // static TextStyle smallBlack() {
  //   return TextStyle(
  //       color: themeColors.blackColor.value,
  //       fontWeight: FontWeight.bold,
  //       fontSize: 15, overflow: TextOverflow.clip);
  // }
  //
  // static TextStyle smallAccent() {
  //   return TextStyle(
  //       color: themeColors.tertiaryColor.value,
  //       fontWeight: FontWeight.bold,
  //       fontSize: 16,
  //       overflow: TextOverflow.clip);
  // }
  //
  // static TextStyle smallPrimary() {
  //   return TextStyle(
  //       color: themeColors.primaryColor.value,
  //       fontSize: 20,
  //       fontWeight: FontWeight.bold,
  //       overflow: TextOverflow.clip);
  // }

//   static TextStyle chartCategory(){
//     return TextStyle(
//         color: themeColors.primaryColor.value,
//         fontWeight: FontWeight.bold,
//         fontStyle: FontStyle.italic,
//         fontSize: 18,
//         overflow: TextOverflow.clip,
//         shadows:[
//           Shadow(
//             color: themeColors.tertiaryColor.value,
//             offset: Offset(1, -1),
//             blurRadius: 2,
//           )
//         ]
//     );
//   }
//
//   static TextStyle chartValue(){
//     return TextStyle(
//         color: themeColors.blackColor.value,
//         fontWeight: FontWeight.bold,
//         fontStyle: FontStyle.italic,
//         fontSize: 18,
//         overflow: TextOverflow.clip,
//         shadows:[
//           Shadow(
//             color: themeColors.tertiaryColor.value,
//             offset: const Offset(1, -1),
//             blurRadius: 2,
//           )
//         ]
//     );
//   }
}


//import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mobile_remote_app/shared/rx_theme_colors.dart';
//
// class TextStyles {
//   ///Theme colors instance
//   static RxThemeColors themeColors = Get.find<RxThemeColors>();
//
//   static TextStyle appBarTitleStyle() {
//     return TextStyle(
//         color: themeColors.onPrimaryColor.value,
//         fontWeight: FontWeight.bold,
//         fontSize: 22,
//     letterSpacing: 9);
//   }
//
//   ///With responsive TextSize
//   static TextStyle outlinedButtonTextStyle() {
//     double screenWidth = Get.width;
//     double responsiveFontSize;
//
//     if (screenWidth < 360) {
//       responsiveFontSize = 13;
//     } else if (screenWidth < 480) {
//       responsiveFontSize = 15;
//     } else {
//       responsiveFontSize = 18;
//     }
//     return TextStyle(
//         color: themeColors.blackColor.value,
//         fontWeight: FontWeight.bold,
//         fontSize: responsiveFontSize,
//     );
//   }
//
//   // static TextStyle outlinedButtonTextStyle() {
//   //   double screenWidth = Get.width;
//   //   double responsiveFontSize;
//   //
//   //   if (screenWidth < 360) {
//   //     responsiveFontSize = 13;
//   //   } else if (screenWidth < 480) {
//   //     responsiveFontSize = 15;
//   //   } else {
//   //     responsiveFontSize = 18;
//   //   }
//   //   return TextStyle(
//   //       color: themeColors.onPrimaryColor.value,
//   //       fontWeight: FontWeight.bold,
//   //       fontSize: responsiveFontSize);
//   // }
//
//
//
//   static TextStyle midSizeButtonTextStyle() {
//     double screenWidth = Get.width;
//     double responsiveFontSize;
//     if (screenWidth < 360) {
//       responsiveFontSize = 14;
//     } else if (screenWidth < 480) {
//       responsiveFontSize = 18;
//     } else {
//       responsiveFontSize = 20;
//     }
//     return TextStyle(
//       color: themeColors.onPrimaryColor.value,
//       fontWeight: FontWeight.bold,
//       fontSize: responsiveFontSize,
//       overflow: TextOverflow.clip,
//     );
//   }
//
//   static TextStyle numPadNumberTextStyle() {
//     double screenWidth = Get.width;
//     double responsiveFontSize;
//     if (screenWidth < 360) {
//       responsiveFontSize = 14;
//     } else if (screenWidth < 480) {
//       responsiveFontSize = 18;
//     } else {
//       responsiveFontSize = 20;
//     }
//     return TextStyle(
//       fontSize: responsiveFontSize,
//       color: themeColors.whiteColor.value,
//       fontWeight: FontWeight.w400,
//       overflow: TextOverflow.clip,
//
//     );
//   }
//
//   static TextStyle numPadTextTextStyle() {
//     return TextStyle(
//       fontSize: 13,
//       color: themeColors.onPrimaryColor.value,
//       fontWeight: FontWeight.w400,
//       overflow: TextOverflow.clip,
//
//     );
//   }
//
//   static TextStyle secondaryTextStyle(){
//     return TextStyle(
//         color: themeColors.secondaryColor.value,
//         fontSize: 18,
//         fontWeight: FontWeight.bold,
//         overflow: TextOverflow.clip);
//   }
//
//
//
//
//   // static TextStyle headings() {
//   //   return TextStyle(
//   //       color: themeColors.,
//   //       fontWeight: FontWeight.bold,
//   //       fontSize: 20,
//   //       overflow: TextOverflow.clip,
//   //       shadows:[
//   //         Shadow(
//   //           color: themeColors.tertiaryColor.value,
//   //           offset: Offset(1, -1),
//   //           blurRadius: 2,
//   //         )
//   //       ]);
//   // }
//   //
//   // static TextStyle smallBlack() {
//   //   return TextStyle(
//   //       color: themeColors.blackColor.value,
//   //       fontWeight: FontWeight.bold,
//   //       fontSize: 15, overflow: TextOverflow.clip);
//   // }
//   //
//   // static TextStyle smallAccent() {
//   //   return TextStyle(
//   //       color: themeColors.tertiaryColor.value,
//   //       fontWeight: FontWeight.bold,
//   //       fontSize: 16,
//   //       overflow: TextOverflow.clip);
//   // }
//   //
//   // static TextStyle smallPrimary() {
//   //   return TextStyle(
//   //       color: themeColors.primaryColor.value,
//   //       fontSize: 20,
//   //       fontWeight: FontWeight.bold,
//   //       overflow: TextOverflow.clip);
//   // }
//
// //   static TextStyle chartCategory(){
// //     return TextStyle(
// //         color: themeColors.primaryColor.value,
// //         fontWeight: FontWeight.bold,
// //         fontStyle: FontStyle.italic,
// //         fontSize: 18,
// //         overflow: TextOverflow.clip,
// //         shadows:[
// //           Shadow(
// //             color: themeColors.tertiaryColor.value,
// //             offset: Offset(1, -1),
// //             blurRadius: 2,
// //           )
// //         ]
// //     );
// //   }
// //
// //   static TextStyle chartValue(){
// //     return TextStyle(
// //         color: themeColors.blackColor.value,
// //         fontWeight: FontWeight.bold,
// //         fontStyle: FontStyle.italic,
// //         fontSize: 18,
// //         overflow: TextOverflow.clip,
// //         shadows:[
// //           Shadow(
// //             color: themeColors.tertiaryColor.value,
// //             offset: const Offset(1, -1),
// //             blurRadius: 2,
// //           )
// //         ]
// //     );
// //   }
// }