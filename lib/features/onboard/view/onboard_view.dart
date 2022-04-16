import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('onBoard.page1.title'.tr()),
        centerTitle: true,
      ),
      body: Center(
        child: Text('onBoard.page1.desc'.tr()),
      ),
    );
  }
}
