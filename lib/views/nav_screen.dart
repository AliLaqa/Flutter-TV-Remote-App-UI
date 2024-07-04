import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_remote_app/shared/rx_global_variables.dart';
import 'package:mobile_remote_app/shared/rx_theme_colors.dart';
import 'package:mobile_remote_app/views/channels_screen.dart';
import 'package:mobile_remote_app/views/control_screen.dart';
import 'package:mobile_remote_app/views/home_screen.dart';
import 'package:mobile_remote_app/views/remote_screen.dart';
import 'package:mobile_remote_app/views/settings_screen.dart';

class NavScreen extends StatelessWidget {
  NavScreen({super.key});

  final NavController navController = Get.find<NavController>();
  final RxThemeColors themeColors = Get.find<RxThemeColors>();

  final List<Widget> _children = [
      HomeScreen(),
      RemoteScreen(),
     ControlScreen(),
    ChannelsScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: themeColors.background.value,
        body: Column(
          children: [
            ///Body
            Expanded(child: Obx(() => _children[navController.selectedIndex.value])),
            ///BottomNavigationBar
            Obx(() =>
            BottomNavigationBar(
              elevation: 0,
              onTap: (index) {
                navController.changeIndex(index);
              },
              currentIndex: navController.selectedIndex.value,
              type: BottomNavigationBarType.fixed,
              backgroundColor: themeColors.background.value,
              iconSize: 20,
              ///Selected Item Text Color
              selectedItemColor: themeColors.secondaryColor.value, // Change the selected icon color here
              ///Unselected Item Text Color
              unselectedItemColor: themeColors.onPrimaryColor.value,
              /// Icon Color
              selectedIconTheme: IconThemeData(color: themeColors.secondaryColor.value,),
              unselectedIconTheme: IconThemeData(color: themeColors.onPrimaryColor.value,),
              ///Font Size
              selectedFontSize: 14.0,
              unselectedFontSize: 12.0,
              /// Font Style
              selectedLabelStyle: TextStyle(color: themeColors.secondaryColor.value,),
              unselectedLabelStyle: TextStyle(color: themeColors.onPrimaryColor.value,),
              ///Flags
              showSelectedLabels: true, // Hide navigation names
              showUnselectedLabels: true, // Hide navigation names
              items: [
                ///HomeScreen Button
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 20,
                  ),
                  label: 'Home', // Empty label
                ),
                ///RemoteScreen Button
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings_remote,
                    size: 20,
                  ),
                  label: 'Remote', // Empty label
                ),
                ///ControlsScreen Button
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.apps_outlined,
                    size: 20,
                  ),
                  label: 'Control', // Empty label
                ),
                ///ChannelsScreen Button
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.tv,
                    size: 20,
                  ),
                  label: 'Channels', // Empty label
                ),
                ///SettingsScreen Button
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings_outlined,
                    size: 20,
                  ),
                  label: 'Settings', // Empty label
                ),
              ],
            ),
            ), //Obx Here
          ],
        ),
      ),
    );
  }
}



///Back up, Color Contrast changed
//import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mobile_remote_app/shared/rx_global_variables.dart';
// import 'package:mobile_remote_app/shared/rx_theme_colors.dart';
// import 'package:mobile_remote_app/views/channels_screen.dart';
// import 'package:mobile_remote_app/views/control_screen.dart';
// import 'package:mobile_remote_app/views/home_screen.dart';
// import 'package:mobile_remote_app/views/remote_screen.dart';
// import 'package:mobile_remote_app/views/settings_screen.dart';
//
// class NavScreen extends StatelessWidget {
//   NavScreen({super.key});
//
//   final NavController navController = Get.find<NavController>();
//   final RxThemeColors themeColors = Get.find<RxThemeColors>();
//
//   final List<Widget> _children = [
//       HomeScreen(),
//       RemoteScreen(),
//      ControlScreen(),
//     ChannelsScreen(),
//     SettingsScreen(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: themeColors.background.value,
//         body: Column(
//           children: [
//             ///Body
//             Expanded(child: Obx(() => _children[navController.selectedIndex.value])),
//             ///BottomNavigationBar
//             Obx(() =>
//             BottomNavigationBar(
//               elevation: 0,
//               onTap: (index) {
//                 navController.changeIndex(index);
//               },
//               currentIndex: navController.selectedIndex.value,
//               type: BottomNavigationBarType.fixed,
//               backgroundColor: themeColors.background.value,
//               iconSize: 20,
//               ///Selected Item Text Color
//               selectedItemColor: themeColors.whiteColor.value, // Change the selected icon color here
//               ///Unselected Item Text Color
//               unselectedItemColor: themeColors.onPrimaryColor.value,
//               /// Icon Color
//               selectedIconTheme: IconThemeData(color: themeColors.whiteColor.value,),
//               unselectedIconTheme: IconThemeData(color: themeColors.onPrimaryColor.value,),
//               ///Font Size
//               selectedFontSize: 14.0,
//               unselectedFontSize: 12.0,
//               /// Font Style
//               selectedLabelStyle: TextStyle(color: themeColors.whiteColor.value,),
//               unselectedLabelStyle: TextStyle(color: themeColors.onPrimaryColor.value,),
//               ///Flags
//               showSelectedLabels: true, // Hide navigation names
//               showUnselectedLabels: true, // Hide navigation names
//               items: [
//                 ///HomeScreen Button
//                 BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.home_outlined,
//                     size: 20,
//                   ),
//                   label: 'Home', // Empty label
//                 ),
//                 ///RemoteScreen Button
//                 BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.settings_remote,
//                     size: 20,
//                   ),
//                   label: 'Remote', // Empty label
//                 ),
//                 ///ControlsScreen Button
//                 BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.apps_outlined,
//                     size: 20,
//                   ),
//                   label: 'Control', // Empty label
//                 ),
//                 ///ChannelsScreen Button
//                 BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.tv,
//                     size: 20,
//                   ),
//                   label: 'Channels', // Empty label
//                 ),
//                 ///SettingsScreen Button
//                 BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.settings_outlined,
//                     size: 20,
//                   ),
//                   label: 'Settings', // Empty label
//                 ),
//               ],
//             ),
//             ), //Obx Here
//           ],
//         ),
//       ),
//     );
//   }
// }