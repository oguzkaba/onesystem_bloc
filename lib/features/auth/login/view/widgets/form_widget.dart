import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:onesystem_bloc/core/constants/colors/colors_constants.dart';
import 'package:onesystem_bloc/core/extansions/context_extension.dart';
import 'package:onesystem_bloc/features/providers/ui_visibility_provider.dart';
import 'package:onesystem_bloc/widgets/dialog_widget.dart';
import 'package:onesystem_bloc/widgets/ebutton_widget.dart';
import 'package:onesystem_bloc/widgets/responsive_widget.dart';
import 'package:onesystem_bloc/widgets/textformfield_widget.dart';
import 'package:provider/provider.dart';
import 'login_button_widget.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      //lc.autoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 5.0,
            ),
            buildTextFormFieldWidgetUsername(),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                buildTextFormFieldWidgetPass(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Theme(
                          data: ThemeData(
                              unselectedWidgetColor: ColorsConstants.myDark),
                          child: Checkbox(
                            splashRadius: 0,
                            activeColor: ColorsConstants.myDarkBlue,
                            checkColor: ColorsConstants.myWhite,
                            value: context
                                .watch<UIVisibilityProvider>()
                                .isCheckRememberWidget,
                            onChanged: (value) {
                              context
                                  .read<UIVisibilityProvider>()
                                  .changeCheckRememberWidget();
                            },
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            context
                                .read<UIVisibilityProvider>()
                                .changeCheckRememberWidget();
                          },
                          child: const Text(
                            'Remember Me?',
                            style: TextStyle(
                                //color: tc.isColorChangeWD(),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      // onPressed: () => Get.toNamed(Routes.LOGINHELP),
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                            color: ColorsConstants.myDarkBlue,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                kIsWeb
                    ? SizedBox(height: context.height * .08)
                    : const SizedBox(height: 0),
                LoginButtonWidget(
                  tcolor: ColorsConstants.myWhite,
                  width: Responsive.isMobile(context)
                      ? context.width * .9
                      : context.width * .3,
                  height: Responsive.isMobile(context)
                      ? context.height * .06
                      : context.height * .08,
                  color: ColorsConstants.myDarkBlue,
                  //#region LOGIN CONTROL
                  onClick: () {},
                  //_loginButtonPress(),
                  //#endregion
                  // widget: dvc.loginLoading.value
                  // ? LoadingWidget(color: ColorsConstants.white):
                  widget: const Text('Login',
                      style: TextStyle(
                          color: ColorsConstants.myWhite, fontSize: 18)),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                kIsWeb
                    ? Container()
                    : EButtonWidget(
                        width: Responsive.isMobile(context)
                            ? context.width * .9
                            : context.width * .3,
                        height: Responsive.isMobile(context)
                            ? context.height * .06
                            : context.height * .1,
                        //color: tc.isColorChangeWD(),
                        //tcolor: tc.isColorChangeDW(),
                        onClick: () => ShowDialogWidget(
                          title: 'Exit',
                          tbtn1: 'OK',
                          tbtn2: 'CANCEL',
                          text1: 'Close the application.',
                          text2: 'Would you like to approve of this message?',
                          onPressed: () {
                            //dvc.loginLoading.value = false;
                            exit(0);
                          },
                        ),
                        title: '',
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Function()? _loginButtonPress() {
//   if (dvc.loginLoading.value) _isButtonDisabled = true;
//   if (_isButtonDisabled) {
//     return null;
//   } else {
//     return () {
//       _login();
//     };
//   }
// }

  _login() async {
    ///Login with [API]--------------------------------
    // dvc.loginLoading.value = true;
    // if (lc.formKey.value.currentState!.validate()) {
    //   await apic.login(lc.uname, lc.password);
    //   if (apic.isLogin.value && apic.isLoading.value == false) {
    //     if (apic.listUser.first.userActual == 1) {
    //       lc.formKey.value.currentState!.save();
    //       sc.saveToPrefsPhotoLevel();
    //       sc.saveToPrefsProjectName();
    //       Get.offNamed(Routes.HOME); //with arguments
    //       print('Sign in successfully${lc.uname}${apic.isLogin}');
    //     } else {
    //       dvc.loginLoading.value = false;
    //       Get.snackbar(
    //           'Warning..!',
    //           'User is inactive, contact your administrator'
    //               , //'Kullanıcı aktif değil....',
    //           backgroundColor: ColorsConstants.pink,
    //           colorText: ColorsConstants.white);
    //     }
    //   } else {
    //     dvc.loginLoading.value = false;
    //     ScaffoldMessenger.of(context).showSnackBar(
    //         'Warning..!',
    //         'No such user found in the system, check username or password'
    //             .tr, //'Kayıtlı kullanıcı bulunamadı(kul.adı veya sifre yanlis)....',
    //         backgroundColor: ColorsConstants.pink,
    //         colorText: ColorsConstants.white);
    //   }
    // } else {
    //   dvc.loginLoading.value = false;
    //   lc.autoValidate = true;
    //   print('Failed to sign in ${apic.isLogin}');
    // }
  }
  return null;
}

TextFormFieldWidget buildTextFormFieldWidgetUsername() {
  return TextFormFieldWidget(
    action: TextInputAction.next,
    hintText: 'Username',
    obscureText: false,
    prefixIconData: Icons.person,
    //suffixIconData: model.isValid ? Icons.check : null,
    //validator: lc.validateUname,
    onChanged: (value) => null,
  );
}

Consumer<Object?> buildTextFormFieldWidgetPass(BuildContext context) {
  return Consumer(
    builder: (BuildContext context, value, _) => TextFormFieldWidget(
      action: TextInputAction.send,
      hintText: 'Password',
      onVisible: () =>
          context.read<UIVisibilityProvider>().changePasswordVisible(),
      obscureText: context.watch<UIVisibilityProvider>().isPasswordVisible
          ? false
          : true,
      prefixIconData: Icons.lock,
      suffixIconData: context.watch<UIVisibilityProvider>().isPasswordVisible
          ? Icons.visibility
          : Icons.visibility_off,
      //validator: lc.validatePassword,
      onChanged: (value) =>
          Provider.of<UIVisibilityProvider>(context, listen: false)
              .changePasswordValue(value),
    ),
  );
}
