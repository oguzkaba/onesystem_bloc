// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../models/globals_model.dart';

// class DropDownWidget extends StatelessWidget {
//   final String? title, select;
//   final Function(String?)? changed;
//   final bool? enable, search;
//   final List<String>? items;
//   final Mode? mode;

//   const DropDownWidget(
//       {Key? key,
//       required this.title,
//       this.select,
//       this.changed,
//       required this.enable,
//       this.items,
//       this.mode,
//       this.search})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: Get.height / 22,
//       child: DropdownSearch(
//         maxHeight: Get.height * .6,
//         enabled: enable!,
//         dropdownSearchDecoration: InputDecoration(
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(5),
//               borderSide: BorderSide(color: Global.medium, width: 1.3),
//             ),
//             disabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(5),
//               borderSide: BorderSide(color: Global.extra_light, width: 1),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(5),
//               borderSide: BorderSide(color: Global.focusedBlue, width: 1.3),
//             ),
//             contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 0),
//             isDense: true),
//         popupTitle: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(title!),
//         ),
//         autoValidateMode: AutovalidateMode.always,
//         showSearchBox: search ?? true,
//         //autoFocusSearchBox: true,
//         items: items,
//         selectedItem: select != null ? select : title,
//         onChanged: changed,
//         mode: mode ?? Mode.MENU,
//       ),
//     );
//   }
// }
