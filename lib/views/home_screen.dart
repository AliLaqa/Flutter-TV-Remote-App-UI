import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_remote_app/shared/rx_theme_colors.dart';
import 'package:mobile_remote_app/shared/text_styles.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final RxThemeColors themeColors = Get.find<RxThemeColors>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: themeColors.background.value,
        appBar: AppBar(
          title:  const Text("Home"),
          titleTextStyle: TextStyles.appBarTitleStyle(),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: themeColors.background.value,
        ),
      ),
    );
  }
}
