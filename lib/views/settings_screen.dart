import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_remote_app/shared/rx_theme_colors.dart';
import 'package:mobile_remote_app/shared/text_styles.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final RxThemeColors themeColors = Get.find<RxThemeColors>();
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: themeColors.background.value,
        appBar: AppBar(
          title: const Text("Settings"),
          titleTextStyle: TextStyles.appBarTitleStyle(),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: _isSwitched ? Colors.purple : themeColors.background.value,
          actions: [
            Switch(
              value: _isSwitched,
              onChanged: (value) {
                setState(() {
                  _isSwitched = value;
                });
              },
              activeColor: themeColors.primaryColor.value,
            ),
          ],
        ),
      ),
    );
  }
}