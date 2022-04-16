import 'package:flutter/material.dart';
import 'package:onesystem_bloc/core/constants/colors/colors_constants.dart';

class ChangeProjectAndLangWidget extends StatelessWidget {
  const ChangeProjectAndLangWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            //width: rc.isPhone ? Get.width * .5 : Get.width * .2,
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                border: Border.all(
                    // color: tc.isColorChangeWD(),
                    width: 1)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon:
                    Icon(Icons.line_weight, color: ColorsConstants.focusedBlue),
                iconSize: 28,
                focusColor: ColorsConstants.focusedBlue,
                //value: dvc.choseProject,
                //elevation: 5,
                style: const TextStyle(
                    //color: tc.isColorChangeWD(),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                items: <String>[
                  'Default Project',
                  'ABC Project',
                  '123 Project',
                  'Demo Project'
                ].map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  // dvc.onSavedProject(value!);
                },
              ),
            ),
          ),
          SizedBox(width: 1),
          // Container(
          //   //width: rc.isPhone ? Get.width * .35 : Get.width * .1,
          //   padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          //   decoration: BoxDecoration(
          //       borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          //       border: Border.all(color: tc.isColorChangeWD(), width: 1)),
          //   child: DropdownButtonHideUnderline(
          //     child: DropdownButton<String>(
          //       icon: Icon(Icons.translate, color: Global.focusedBlue),
          //       iconSize: 28,
          //       focusColor: Global.focusedBlue,
          //       value: sc.selectedLang.value,
          //       //elevation: 5,
          //       style: TextStyle(
          //           color: tc.isColorChangeWD(),
          //           fontSize: 18,
          //           fontWeight: FontWeight.w600),
          //       items: AppTranslation.langs.map((lang) {
          //         return DropdownMenuItem(value: lang, child: Text(lang));
          //       }).toList(),

          //       onChanged: (value) {
          //         // sc.selectedLang.value = value!;
          //         // AppTranslation().changeLocale(sc.selectedLang.value);
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
