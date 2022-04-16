// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../controllers/view/responsive_controller.dart';

// import '../../responsive.dart';
// import 'nav_head_widget.dart';

// class AppbarWidget extends StatefulWidget implements PreferredSizeWidget {
//   const AppbarWidget({Key? key, required this.height, required this.title})
//       : super(key: key);
//   final double height;
//   final String title;

//   @override
//   _AppbarWidgetState createState() => _AppbarWidgetState();

//   @override
//   Size get preferredSize => Size.fromHeight(height);
// }

// class _AppbarWidgetState extends State<AppbarWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//         leading: Responsive.isMobile(context)
//             ? IconButton(
//                 splashRadius: 16,
//                 onPressed: () => Get.find<ResponsiveController>().controlMenu(),
//                 icon: Icon(Icons.menu))
//             : Container(),
//         centerTitle: true,
//         title: NavHeadWidget(title: widget.title),
//         toolbarHeight: widget.height);
//   }
// }
