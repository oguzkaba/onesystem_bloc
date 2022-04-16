import 'package:flutter/material.dart';
import 'package:onesystem_bloc/core/extansions/context_extension.dart';

class LoginButtonWidget extends StatelessWidget {
  final Widget widget;
  final Color? color;
  final Color? tcolor;
  final void Function()? onClick;
  final double? width;
  final double? height;

  const LoginButtonWidget(
      {Key? key,
      required this.widget,
      this.color,
      this.onClick,
      this.height,
      this.width,
      this.tcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? context.height * .06,
      width: width ?? context.width * .3,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            //shadowColor: Colors.transparent,
            primary: color,
          ),
          onPressed: onClick,
          child: widget),
    );
  }
}
