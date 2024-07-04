import 'package:get/get.dart';
import 'package:flutter/material.dart';

class RxThemeColors extends GetxController {
  ///For Theme
  Rx<Color> primaryColor = const Color.fromARGB(255, 73, 73, 86).obs; //such as the app bar, buttons, and active elements.
  Rx<Color> onPrimaryColor = const Color.fromARGB(255, 159, 159, 159).obs; //applied to text and icons displayed on top of the primary color.
  Rx<Color> secondaryColor = const Color.fromARGB(255, 79, 89, 199).obs; //for less prominent components, floating action buttons, selection controls.
  Rx<Color> onSecondaryColor = const Color.fromARGB(255, 255, 255, 255).obs; //applied to text and icons displayed on top of the secondary color.
  Rx<Color> error = const Color.fromARGB(255, 211, 213, 220).obs; //The color to use for error indications.
  Rx<Color> onError = const Color.fromARGB(255, 255, 0, 0).obs; //applied to text and icons displayed on top of the error color.
  Rx<Color> background = const Color.fromARGB(255, 17, 17, 35).obs; //The background color for screens and surfaces.
  Rx<Color> onBackground = const Color.fromARGB(255, 27, 18, 18).obs; //applied to text and icons displayed on top of the background color.
  Rx<Color> surface = const Color.fromARGB(255, 240, 255, 255).obs; //for surfaces of components such as cards, sheets, and menus.
  Rx<Color> onSurface = const Color.fromARGB(255, 0, 0, 0).obs; //applied to text and icons displayed on top of the surface color.
  ///Custom
  Rx<Color> blackColor = const Color.fromARGB(255, 0, 0, 0).obs; //Black
  Rx<Color> whiteColor = const Color.fromARGB(255, 255, 255, 255).obs; //White
}



//import 'package:get/get.dart';
// import 'package:flutter/material.dart';
//
// class RxThemeColors extends GetxController {
//   ///For Theme
//   Rx<Color> primaryColor = const Color.fromARGB(255, 73, 73, 86).obs; //such as the app bar, buttons, and active elements.
//   Rx<Color> onPrimaryColor = const Color.fromARGB(255, 159, 159, 159).obs; //applied to text and icons displayed on top of the primary color.
//   Rx<Color> secondaryColor = const Color.fromARGB(255, 79, 89, 199).obs; //for less prominent components, floating action buttons, selection controls.
//   // Rx<Color> onSecondaryColor = const Color.fromARGB(255, 255, 255, 255).obs; //applied to text and icons displayed on top of the secondary color.
//   Rx<Color> ternaryColor = const Color.fromARGB(255, 211, 213, 220).obs; //The color to use for error indications.
//   // Rx<Color> onError = const Color.fromARGB(255, 255, 0, 0).obs; //applied to text and icons displayed on top of the error color.
//   Rx<Color> background = const Color.fromARGB(255, 7, 7, 16).obs; //The background color for screens and surfaces.
//   // Rx<Color> onBackground = const Color.fromARGB(255, 27, 18, 18).obs; //applied to text and icons displayed on top of the background color.
//   // Rx<Color> surface = const Color.fromARGB(255, 240, 255, 255).obs; //for surfaces of components such as cards, sheets, and menus.
//   // Rx<Color> onSurface = const Color.fromARGB(255, 0, 0, 0).obs; //applied to text and icons displayed on top of the surface color.
//   ///Custom
//   Rx<Color> blackColor = const Color.fromARGB(255, 0, 0, 0).obs; //Black
//   Rx<Color> whiteColor = const Color.fromARGB(255, 255, 255, 255).obs; //White
// }
