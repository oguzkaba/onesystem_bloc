// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import '../../../models/globals_model.dart';

// class BorderedText extends StatelessWidget {
//   final String text;
//   final double? leftmargin, height;
//   final Color? color;
//   final FontWeight? weight;
//   const BorderedText({
//     required this.text,
//     this.leftmargin,
//     this.weight,
//     this.height,
//     this.color,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: height,
//         padding: EdgeInsets.all(6),
//         margin: EdgeInsets.fromLTRB(leftmargin ?? 0, 0, 6, 6),
//         decoration: BoxDecoration(
//             border: Border.all(width: 1, color: Global.light), color: color),
//         child: SelectableText(text, maxLines: 1, onTap: () {
//           Clipboard.setData(ClipboardData(text: text));
//           Get.snackbar('Copy Clipboard', 'Copy',
//               barBlur: 10,
//               margin: EdgeInsets.all(15),
//               snackPosition: SnackPosition.BOTTOM,
//               backgroundColor: Global.focusedGreen.withOpacity(0.3),
//               forwardAnimationCurve: Curves.easeInOutBack,
//               icon: Icon(Icons.copy));
//         }, style: TextStyle(fontWeight: weight ?? FontWeight.bold)));
//   }
// }
