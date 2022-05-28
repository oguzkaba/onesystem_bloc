import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:onesystem_bloc/core/constants/colors/colors_constants.dart';

class ShowDialogWidget extends StatelessWidget {
  final String title, text1, text2, tbtn1, tbtn2;
  final Function() onPressed;

  const ShowDialogWidget(
      {Key? key,
      required this.title,
      required this.text1,
      required this.text2,
      required this.tbtn1,
      required this.tbtn2,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:
          Text(title, style: const TextStyle(color: ColorsConstants.myDarkRed)),
      content: SingleChildScrollView(
        child: ListBody(children: <Widget>[
          Text(
            text1,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Text(text2, style: const TextStyle(fontSize: 14))
        ]),
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            tbtn1,
            style: const TextStyle(color: ColorsConstants.myDarkRed),
          ),
          onPressed: onPressed,
        ),
        TextButton(
          child: Text(
            tbtn2,
            style: const TextStyle(color: ColorsConstants.myBlack),
          ),
          onPressed: context.router.pop,
        ),
      ],
    );
  }
}
