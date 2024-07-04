import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_remote_app/shared/rx_theme_colors.dart';

class SingleChildButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  SingleChildButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final RxThemeColors themeColors = Get.find<RxThemeColors>();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(themeColors.primaryColor.value),
        foregroundColor: MaterialStateProperty.all<Color>(themeColors.onPrimaryColor.value),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        fixedSize: MaterialStateProperty.all<Size>(const Size(60.0, 60.0)),
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}

