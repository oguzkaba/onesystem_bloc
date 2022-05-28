import 'package:flutter/material.dart';
import 'package:onesystem_bloc/core/constants/colors/colors_constants.dart';
import 'package:onesystem_bloc/features/providers/ui_visibility_provider.dart';
import 'package:provider/provider.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIconData;
  final IconData? suffixIconData;
  final bool obscureText;
  final TextInputAction action;
  final Function(String)? onChanged;
  final Function()? onVisible;
  final String? Function(String?)? validator;
  const TextFormFieldWidget(
      {Key? key,
      required this.hintText,
      required this.prefixIconData,
      this.suffixIconData,
      required this.obscureText,
      required this.onChanged,
      required this.action,
      this.validator,
      this.onVisible})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //autofocus: focus,
      textInputAction: action,
      validator: validator,
      onChanged: onChanged,
      obscureText: obscureText,
      cursorColor: ColorsConstants.myBlue,
      style: const TextStyle(
        color: ColorsConstants.myDark,
        //tc.isSavedDarkMode() ? Global.white : Global.dark_default,
        fontSize: 16.0,
      ),
      decoration: InputDecoration(
        labelStyle: const TextStyle(
            color: ColorsConstants.myDark,
            //tc.isSavedDarkMode() ? Global.white : Global.dark_default,
            fontSize: 18.0),
        focusColor: ColorsConstants.myBlue,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide:
              const BorderSide(color: ColorsConstants.myLight, width: 1.3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:
              const BorderSide(color: ColorsConstants.myBlue, width: 1.3),
        ),
        labelText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size: 20,
          color: ColorsConstants.myDark,
          //tc.isSavedDarkMode() ? Global.white : Global.dark_default,
        ),
        suffixIcon: GestureDetector(
          onTap: () => onVisible,
          child: Icon(
            suffixIconData,
            size: 20,
            color: ColorsConstants.myDark,
            //lc.isVisible ? Global.dark_default : Global.light,
          ),
        ),
      ),
    );
  }
}
