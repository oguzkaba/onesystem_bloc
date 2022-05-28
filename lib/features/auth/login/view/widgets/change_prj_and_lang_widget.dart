import 'package:flutter/material.dart';
import 'package:onesystem_bloc/core/constants/colors/colors_constants.dart';
import 'package:onesystem_bloc/core/extansions/context_extension.dart';
import 'package:onesystem_bloc/core/init/lang/language_manager.dart';
import 'package:onesystem_bloc/features/providers/ui_visibility_provider.dart';
import 'package:onesystem_bloc/widgets/responsive_widget.dart';
import 'package:provider/provider.dart';

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
            height: Responsive.isMobile(context)
                ? context.height * .04
                : context.height * .06,
            width: Responsive.isMobile(context)
                ? context.width * .5
                : context.width * .14,
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                border: Border.all(color: ColorsConstants.myLight, width: 1)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon: const Icon(Icons.line_weight,
                    color: ColorsConstants.myDarkBlue),
                iconSize: 24,
                focusColor: ColorsConstants.myTrnsp,
                value: context.watch<UIVisibilityProvider>().selectProject,
                //elevation: 5,
                style: const TextStyle(
                    //color: tc.isColorChangeWD(),
                    fontWeight: FontWeight.w600),
                items: <String>[
                  'Default Project',
                  'ABC Project',
                  '123 Project',
                  'Demo Project'
                ].map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, overflow: TextOverflow.ellipsis),
                  );
                }).toList(),
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                onChanged: (value) {
                  context.read<UIVisibilityProvider>().changeProject(value!);
                },
              ),
            ),
          ),
          const SizedBox(width: 1),
          Container(
            height: Responsive.isMobile(context)
                ? context.height * .04
                : context.height * .06,
            width: Responsive.isMobile(context)
                ? context.width * .5
                : context.width * .14,
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                border: Border.all(color: ColorsConstants.myLight, width: 1)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon: const Icon(Icons.translate,
                    color: ColorsConstants.myDarkBlue),
                iconSize: 24,
                value: context.watch<UIVisibilityProvider>().selectLang,
                //elevation: 5,
                style: const TextStyle(fontWeight: FontWeight.w600),
                items: LanguageManager.supportedLocalesList.map((lang) {
                  return DropdownMenuItem(value: lang, child: Text(lang));
                }).toList(),
                focusColor: ColorsConstants.myTrnsp,
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                onChanged: (value) {
                  context.read<UIVisibilityProvider>().changeLang(value!);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
