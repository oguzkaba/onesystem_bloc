import 'package:flutter/material.dart';
import 'package:onesystem_bloc/core/constants/colors/colors_constants.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIconData;
  final IconData? suffixIconData;
  final bool obscureText;
  final TextInputAction action;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  TextFormFieldWidget(
      {required this.hintText,
      required this.prefixIconData,
      this.suffixIconData,
      required this.obscureText,
      required this.onChanged,
      required this.action,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //autofocus: focus,
      textInputAction: action,
      validator: validator,
      onChanged: onChanged,
      obscureText: obscureText,
      cursorColor: ColorsConstants.focusedBlue,
      style: const TextStyle(
        color: ColorsConstants.dark_default,
        //tc.isSavedDarkMode() ? Global.white : Global.dark_default,
        fontSize: 16.0,
      ),
      decoration: InputDecoration(
        labelStyle: const TextStyle(
            color: ColorsConstants.dark_default,
            //tc.isSavedDarkMode() ? Global.white : Global.dark_default,
            fontSize: 18.0),
        focusColor: ColorsConstants.focusedBlue,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide:
              const BorderSide(color: ColorsConstants.extra_light, width: 1.3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:
              const BorderSide(color: ColorsConstants.focusedBlue, width: 1.3),
        ),
        labelText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size: 25,
          color: ColorsConstants.dark_default,
          //tc.isSavedDarkMode() ? Global.white : Global.dark_default,
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            //lc.isVisible = !lc.isVisible;
          },
          child: Icon(
            suffixIconData,
            size: 20,
            color: ColorsConstants.dark_default,
            //lc.isVisible ? Global.dark_default : Global.light,
          ),
        ),
      ),
    );
  }
}
