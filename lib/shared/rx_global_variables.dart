import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RxGlobalVariables extends GetxController {
  ///For Date Picker - Add Task Screen
var selectedDateValue = DateTime.now().obs;
var dayOfWeek = "".obs;
var formattedDate = "".obs;
///For TextFormField
var taskInputController = TextEditingController().obs;
var enteredTask = "".obs;
var descriptionInputController = TextEditingController().obs;
var enteredDescription = "".obs;
final formKey = GlobalKey<FormState>().obs;
var isFormValid = false.obs; //Form Validation flag
///For duration Picker
var duration = Duration(hours: 0, minutes: 0).obs;
var durationInSeconds = 0.obs;
var durationInMinutes = 0.obs;
///For Saving Task
var addTaskList = <String>[].obs;
var currentIndex = 0.obs;
///For Getting tasks
var selectedDayMappedTasks = <Map<String,dynamic>>[].obs;
///For Countdown Timer
var formattedTime = "".obs;
var currentTask = <String,dynamic>{}.obs;
var isTimerPlayingList = <bool>[].obs;
var currentTaskIndex = 0.obs;
var remainingTaskSeconds = 0.obs;
var circularIndicatorProgress = 0.0.obs;
}

///NavScreenController
class NavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}





///Backup before fixing countdown timer pause/play
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:timer_count_down/timer_controller.dart';
//
// class RxGlobalVariables extends GetxController {
//   ///For Date Picker - Add Task Screen
// var selectedDateValue = DateTime.now().obs;
// var dayOfWeek = "".obs;
// var formattedDate = "".obs;
// ///For TextFormField
// var taskInputController = TextEditingController().obs;
// var enteredTask = "".obs;
// var descriptionInputController = TextEditingController().obs;
// var enteredDescription = "".obs;
// final formKey = GlobalKey<FormState>().obs;
// var isFormValid = false.obs; //Form Validation flag
// ///For duration Picker
// var duration = Duration(hours: 0, minutes: 0).obs;
// var durationInSeconds = 0.obs;
// var durationInMinutes = 0.obs;
// ///For Saving Task
// var addTaskList = <String>[].obs;
// var currentIndex = 0.obs;
// ///For Getting tasks
// var selectedDayMappedTasks = <Map<String,dynamic>>[].obs;
// ///For Countdown Timer
// // var countdownController = CountdownController(autoStart: false).obs;
// final CountdownController countdownController =
// CountdownController(autoStart: false);
// var formattedTime = "".obs;
// var isTimerPlaying = false.obs;
//
// }
//
//
//
// ///NavScreenController
// class NavController extends GetxController {
//   var selectedIndex = 0.obs;
//
//   void changeIndex(int index) {
//     selectedIndex.value = index;
//   }
// }
//
