import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_remote_app/shared/rx_theme_colors.dart';
import 'package:mobile_remote_app/shared/spacers.dart';
import 'package:mobile_remote_app/shared/text_styles.dart';
import 'package:mobile_remote_app/widgets/single_child_button.dart';

class ChannelsScreen extends StatelessWidget {
  ChannelsScreen({super.key});

  final RxThemeColors themeColors = Get.find<RxThemeColors>();

  @override
  Widget build(BuildContext context) {
    ///For Dynamic Spacing Widget
    double screenHeight = Get.height;
    Widget DynamicSpacingSmall;
    Widget DynamicSpacingMedium;

    if (screenHeight < 640) {
      DynamicSpacingSmall = const Space10();
      DynamicSpacingMedium = const Space15();
    } else if (screenHeight < 800 ) {
      DynamicSpacingSmall = const Space20();
      DynamicSpacingMedium = const Space25();
    } else {
      DynamicSpacingSmall = const Space30();
      DynamicSpacingMedium = const Space35();
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: themeColors.background.value,
        appBar: AppBar(
          title: const Text("Channels"),
          titleTextStyle: TextStyles.appBarTitleStyle(),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: themeColors.background.value,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DynamicSpacingMedium,
                ///Dummy Buttons, todo: later channels buttons with ListView.builder
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SingleChildButton(
                        onPressed: (){},
                        child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Netflix_icon.svg/480px-Netflix_icon.svg.png"),
                    ),
                    SingleChildButton(
                      onPressed: (){},
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeMu3mfzajm2Z1_1JhgFUcJg86Vqb3-2uBng&s"),
                    ),
                    SingleChildButton(
                      onPressed: (){},
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2YXoZKi6l7P0Lm952zHtLWLvLdiZxrhyjuQ&s"),
                    ),

                    SingleChildButton(
                      onPressed: (){},
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRCJTOnOjW_MWB5hrJtFlBL4BeW2xTjxhwzA&s"),
                    ),
                  ],
                ),
                DynamicSpacingSmall,
                ///Dummy Buttons, todo: later channels buttons with ListView.builder
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SingleChildButton(
                      onPressed: (){},
                      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Netflix_icon.svg/480px-Netflix_icon.svg.png"),
                    ),
                    SingleChildButton(
                      onPressed: (){},
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeMu3mfzajm2Z1_1JhgFUcJg86Vqb3-2uBng&s"),
                    ),
                    SingleChildButton(
                      onPressed: (){},
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2YXoZKi6l7P0Lm952zHtLWLvLdiZxrhyjuQ&s"),
                    ),

                    SingleChildButton(
                      onPressed: (){},
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRCJTOnOjW_MWB5hrJtFlBL4BeW2xTjxhwzA&s"),
                    ),
                  ],
                ),
                DynamicSpacingSmall,
                ///Dummy Buttons, todo: later channels buttons with ListView.builder
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SingleChildButton(
                      onPressed: (){},
                      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Netflix_icon.svg/480px-Netflix_icon.svg.png"),
                    ),
                    SingleChildButton(
                      onPressed: (){},
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeMu3mfzajm2Z1_1JhgFUcJg86Vqb3-2uBng&s"),
                    ),
                    SingleChildButton(
                      onPressed: (){},
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2YXoZKi6l7P0Lm952zHtLWLvLdiZxrhyjuQ&s"),
                    ),

                    SingleChildButton(
                      onPressed: (){},
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRCJTOnOjW_MWB5hrJtFlBL4BeW2xTjxhwzA&s"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
