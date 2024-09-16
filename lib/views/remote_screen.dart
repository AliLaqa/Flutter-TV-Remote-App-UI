import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_remote_app/shared/rx_theme_colors.dart';
import 'package:mobile_remote_app/shared/spacers.dart';
import 'package:mobile_remote_app/shared/text_styles.dart';
import 'package:mobile_remote_app/widgets/circular_control_button.dart';
import 'package:mobile_remote_app/widgets/increase_decrease_button.dart';
import 'package:mobile_remote_app/widgets/outlined_button_1.dart';
import 'package:mobile_remote_app/widgets/single_child_button.dart';


class RemoteScreen extends StatelessWidget {
  RemoteScreen({super.key});

  final RxThemeColors themeColors = Get.find<RxThemeColors>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Scaffold(
        backgroundColor: themeColors.background.value,
        appBar: AppBar(
          title: const Text("Remote",),
          titleTextStyle: TextStyles.appBarTitleStyle(),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: themeColors.background.value,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Space20(),
                ///Header Buttons Row
                Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ///Power Button Row Section-->
                      OutlinedButton1(
                        onPressed: () {},
                      child: Icon(Icons.power_settings_new_outlined,
                        color: themeColors.onPrimaryColor.value,),),
                      ///Guide Button
                      OutlinedButton1(
                          child: Text("Guide", style: TextStyles.outlinedButtonTextStyle(),),
                          onPressed: (){},
                      ),
                      ///HDMI Button
                      OutlinedButton1(
                          child: Text("HDMI", style: TextStyles.outlinedButtonTextStyle(),),
                          onPressed: (){},
                      ),
                      ///Home Button
                      OutlinedButton1(
                          child: Icon(Icons.home,color: themeColors.onPrimaryColor.value,),
                          onPressed: (){},
                      ),
                    ],
                  ),
                ), //Header Buttons Row End-->
          
                const Space10(),
                ///Middle Buttons Container Section-->
                Container(
                  margin: const EdgeInsets.only(top: 5, left: 5, right: 5,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ///Volume change Buttons
                      IncreaseDecreaseButton(
                          title: "VOL",
                          onIncreasePressed: (){},
                          onDecreasePressed: (){}),
                      ///Middle Buttons(Menu, Mute, Exit)
                      Column(children: [
                        ///MENU Button
                        SingleChildButton(
                          onPressed: () {  }, 
                          child: Text("MENU", style: TextStyles.outlinedButtonTextStyle()),
                        ),
                        const Space10(),
                        ///Mute Button
                        SingleChildButton(
                          onPressed: () {  },
                          child: Icon(Icons.volume_off, color: themeColors.onPrimaryColor.value,),
                        ),
                        const Space10(),
                        ///Exit Button
                        SingleChildButton(
                          onPressed: () {  },
                          child: Icon(Icons.exit_to_app, color: themeColors.onPrimaryColor.value,),
                        ),
                      ],
                      ),
                      ///Channel Switch Button
                      IncreaseDecreaseButton(
                          title: "CH",
                          onIncreasePressed: (){},
                          onDecreasePressed: (){}),
                    ],
                  ),
                ), //Middle Buttons Container Section End-->
                
                ///Bottom Buttons Container Section-->
                Container(
                  margin: const EdgeInsets.only(top: 5, left: 5, right: 5,),
                  decoration: BoxDecoration(
                    color: themeColors.background.value,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ///Tools, Undo Buttons Column
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         ///Tools Button
                          SingleChildButton(
                             onPressed: (){},
                             child: Text("Tools", style: TextStyles.outlinedButtonTextStyle())),

                          const Space20(),
                          const Space20(),
                          const Space20(),
                          const Space20(),
                          ///Undo Button
                          SingleChildButton(
                              onPressed: (){},
                              child: Icon(Icons.settings_backup_restore, color: themeColors.onPrimaryColor.value,)),
                        ],
                      ),

                      ///Circular Control Button
                      CircularControlButton(
                        onUpPressed: () {},
                        onDownPressed: () {},
                        onLeftPressed: () {},
                        onRightPressed: () {},),

                      ///Info, Exit Buttons Column
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ///INFO Button
                          SingleChildButton(
                              onPressed: (){},
                              child: Text("INFO", style: TextStyles.outlinedButtonTextStyle())),
                          const Space20(),
                          const Space20(),
                          const Space20(),
                          const Space20(),
                          ///EXIT Button
                          SingleChildButton(
                              onPressed: (){},
                              child: Text("EXIT", style: TextStyles.outlinedButtonTextStyle())),
                        ],
                      )

                    ],
                  ),
                )
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
