import 'package:flutter/material.dart';
import 'package:onesystem_bloc/core/extansions/context_extension.dart';

class EButtonWidget extends StatelessWidget {
  final String title;
  final Color? color;
  final Color? tcolor;
  final Function()? onClick;
  final double? width;
  final double? height;

  const EButtonWidget(
      {Key? key,
      required this.title,
      this.color,
      this.onClick,
      this.height,
      this.width,
      this.tcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? context.height * .06,
      width: width ?? context.width * .3,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          //shadowColor: Colors.transparent,
          primary: color,
        ),
        onPressed: onClick,
        child: Text(title, style: TextStyle(color: tcolor, fontSize: 18)),
      ),
    );
  }
}
