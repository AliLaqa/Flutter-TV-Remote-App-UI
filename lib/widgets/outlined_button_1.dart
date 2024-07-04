import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_remote_app/shared/rx_theme_colors.dart';

class OutlinedButton1 extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  OutlinedButton1({
    super.key,
    required this.child,
    required this.onPressed,
  });

  final RxThemeColors themeColors = Get.find<RxThemeColors>();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(color: Colors.grey, width: 2.0),
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
// class OutlinedButton1 extends StatelessWidget {
//   final Widget child;
//   final VoidCallback onPressed;
//   OutlinedButton1({
//     super.key,
//     required this.child,
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
//           const BorderSide(color: Colors.grey, width: 2.0),
//         ),
//         backgroundColor: MaterialStateProperty.all<Color>(themeColors.whiteColor.value),
//         foregroundColor: MaterialStateProperty.all<Color>(themeColors.blackColor.value),
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