import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_remote_app/shared/rx_theme_colors.dart';

class OutlinedButton2 extends StatelessWidget {
  final Widget child;
  final Color btnBorderColor;
  final VoidCallback onPressed;
  OutlinedButton2({
    super.key,
    required this.child,
    required this.btnBorderColor,
    required this.onPressed,
  });

  final RxThemeColors themeColors = Get.find<RxThemeColors>();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        side: MaterialStateProperty.all<BorderSide>(
           BorderSide(color: btnBorderColor, width: 2.0),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(themeColors.background.value),
        foregroundColor: MaterialStateProperty.all<Color>(themeColors.onPrimaryColor.value),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}

//import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mobile_remote_app/shared/rx_theme_colors.dart';
//
// class OutlinedButton2 extends StatelessWidget {
//   final Widget child;
//   final Color btnBorderColor;
//   final VoidCallback onPressed;
//   OutlinedButton2({
//     super.key,
//     required this.child,
//     required this.btnBorderColor,
//     required this.onPressed,
//   });
//
//   final RxThemeColors themeColors = Get.find<RxThemeColors>();
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ButtonStyle(
//         side: MaterialStateProperty.all<BorderSide>(
//           BorderSide(color: btnBorderColor, width: 2.0),
//         ),
//         backgroundColor: MaterialStateProperty.all<Color>(themeColors.ternaryColor.value),
//         foregroundColor: MaterialStateProperty.all<Color>(themeColors.whiteColor.value),
//         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//           RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//         ),
//       ),
//       onPressed: onPressed,
//       child: child,
//     );
//   }
// }
