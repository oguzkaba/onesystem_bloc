// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../controllers/preff/sharpref_controller.dart';
// import '../../../controllers/view/dataview_controller.dart';
// import '../../../controllers/view/theme_controller.dart';

// // ignore: must_be_immutable
// class NavHeadWidget extends StatelessWidget {
//   NavHeadWidget({Key? key, required this.title}) : super(key: key);

//   final String title;

//   SharedPrefController sc = Get.put(SharedPrefController());
//   ThemeController tc = Get.put(ThemeController());
//   DataviewController dvc = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() => Text(
//         // ignore: unnecessary_null_comparison
//         'OneSystem > $title ( Project: ${sc.prjName == null ? dvc.choseProject.toLowerCase() : sc.prjName.toUpperCase()} )',
//         /*kullanilacak basliklar icin proje ismini pref den al*/
//         style: TextStyle(fontSize: 16, color: tc.isColorChangeWD())));
//   }
// }
