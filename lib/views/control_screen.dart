import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_remote_app/shared/rx_theme_colors.dart';
import 'package:mobile_remote_app/shared/spacers.dart';
import 'package:mobile_remote_app/shared/text_styles.dart';
import 'package:mobile_remote_app/widgets/outlined_button_2.dart';
import 'package:mobile_remote_app/widgets/single_child_button.dart';
import 'package:mobile_remote_app/widgets/two_child_button.dart';

class ControlScreen extends StatelessWidget {
  ControlScreen({super.key});

  final RxThemeColors themeColors = Get.find<RxThemeColors>();

  @override
  Widget build(BuildContext context) {
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
          title: const Text("Control"),
          titleTextStyle: TextStyles.appBarTitleStyle(),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: themeColors.background.value,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DynamicSpacingSmall,
                ///Todo: NumPad Section-->
                ///1, 2, 3 Button Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// 1 Button
                    SingleChildButton(
                        onPressed: (){},
                        child: Text("1", style: TextStyles.numPadNumberTextStyle(),)),
                    /// 2 Button
                    TwoChildButton(
                      btnNum: "2",
                      btnText: "ABC",
                      onPressed: () {  },
                    ),
                    /// 3 Button
                    TwoChildButton(
                      btnNum: "3",
                      btnText: "DEF",
                      onPressed: () {  },
                    ),
                ],
                ),
                DynamicSpacingSmall,
                ///4, 5, 6 Button Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// 4 Button
                    TwoChildButton(
                        btnNum: "4",
                        btnText: "GHI",
                        onPressed: (){},
                    ),
                    /// 5 Button
                    TwoChildButton(
                      btnNum: "5",
                      btnText: "JKL",
                      onPressed: (){},
                    ),
                    /// 6 Button
                    TwoChildButton(
                      btnNum: "6",
                      btnText: "MNO",
                      onPressed: (){},
                    ),
                  ],
                ),
                DynamicSpacingSmall,
                ///7, 8, 9 Button Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// 7 Button
                    TwoChildButton(
                      btnNum: "7",
                      btnText: "PQRS",
                      onPressed: (){},
                    ),
                    /// 8 Button
                    TwoChildButton(
                      btnNum: "8",
                      btnText: "TUV",
                      onPressed: (){},
                    ),
                    /// 9 Button
                    TwoChildButton(
                      btnNum: "9",
                      btnText: "WXYZ",
                      onPressed: (){},
                    ),
                  ],
                ),
                DynamicSpacingSmall,
                ///TTX, 0, PRE-CH Button Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// TTX Button
                    SingleChildButton(
                        onPressed: (){},
                        child: Text("TTX", style: TextStyles.outlinedButtonTextStyle()),),
                    SingleChildButton(
                        onPressed: (){},
                        child: Text("0",style: TextStyles.numPadNumberTextStyle(),),),
                    /// TTX Button
                    SingleChildButton(
                      onPressed: (){},
                      child: Text("PRE-CH", style: TextStyles.outlinedButtonTextStyle()),),
                  ],
                ),
                DynamicSpacingMedium,
                //KeyPad Section End-->
                ///Video Control(Rewind, Stop, Play/Pause, Fast-Forward) Buttons Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SingleChildButton(
                        onPressed: (){},
                        child: Icon(Icons.fast_rewind, color: themeColors.whiteColor.value,)),
                    SingleChildButton(
                        onPressed: (){},
                        child: Icon(Icons.stop, color: themeColors.whiteColor.value,)),
                    SingleChildButton(
                        onPressed: (){},
                        child: Icon(Icons.play_arrow, color: themeColors.whiteColor.value,)),
                    SingleChildButton(
                        onPressed: (){},
                        child: Icon(Icons.fast_forward, color: themeColors.whiteColor.value,)),
                  ],
                ),
                DynamicSpacingMedium,
                ///A, B, C, D Buttons Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// A Button
                    OutlinedButton2(
                        btnBorderColor: Colors.red,
                        onPressed: (){},
                        child: Text("A", style: TextStyles.numPadNumberTextStyle(),),
                    ),

                    /// B Button
                    OutlinedButton2(
                      btnBorderColor: Colors.yellow,
                      onPressed: (){},
                      child: Text("B", style: TextStyles.numPadNumberTextStyle(),),
                    ),

                    /// C Button
                    OutlinedButton2(
                      btnBorderColor: Colors.green,
                      onPressed: (){},
                      child: Text("C", style: TextStyles.numPadNumberTextStyle(),),
                    ),

                    /// D Button
                    OutlinedButton2(
                      btnBorderColor: Colors.purple,
                      onPressed: (){},
                      child: Text("D", style: TextStyles.numPadNumberTextStyle(),),
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
