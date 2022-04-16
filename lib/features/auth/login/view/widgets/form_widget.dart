import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:onesystem_bloc/core/constants/colors/colors_constants.dart';
import 'package:onesystem_bloc/core/extansions/context_extension.dart';
import 'package:onesystem_bloc/widgets/dialog_widget.dart';
import 'package:onesystem_bloc/widgets/ebutton_widget.dart';
import 'package:onesystem_bloc/widgets/responsive_widget.dart';
import 'package:onesystem_bloc/widgets/textformfield_widget.dart';
import 'login_button_widget.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _isButtonDisabled = false;
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      // ignore: deprecated_member_use
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
                buildTextFormFieldWidgetPass(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Theme(
                          data: ThemeData(
                              unselectedWidgetColor:
                                  ColorsConstants.dark_default
                              //tc.isColorChangeWD(),
                              ),
                          child: Checkbox(
                            activeColor: ColorsConstants.dark_red,
                            //tc.isColorChangeWD(),
                            checkColor: ColorsConstants.dark_,
                            //tc.isColorChangeDW(),
                            value: true,
                            //lc.checkVal,
                            onChanged: (value) {
                              // lc.checkVal = !lc.checkVal;
                              // sc.isRemember = lc.checkVal;
                              // print(
                              //     'Remember: Login Value: ${sc.isRemember}');
                            },
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // lc.checkVal = !lc.checkVal;
                            // sc.isRemember = lc.checkVal;
                            // print('Remember: Login Value: ${sc.isRemember}');
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
                            //color: tc.isColorChangeWD(),
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
                kIsWeb ? const SizedBox(height: 30) : const SizedBox(height: 0),
                LoginButtonWidget(
                  tcolor: ColorsConstants.white,
                  width: Responsive.isMobile(context)
                      ? context.width * .9
                      : context.width * .3,
                  height: context.height * .06,
                  color: ColorsConstants.focusedBlue,
                  //#region LOGIN CONTROL
                  onClick: _loginButtonPress(),
                  //#endregion
                  // widget: dvc.loginLoading.value
                  // ? LoadingWidget(color: ColorsConstants.white):
                  widget: const Text('Login',
                      style: TextStyle(
                          color: ColorsConstants.white, fontSize: 18)),
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
                        height: context.height * .06,
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

TextFormFieldWidget buildTextFormFieldWidgetPass() {
  return TextFormFieldWidget(
    action: TextInputAction.send,
    hintText: 'Password',
    //obscureText: lc.isVisible ? false : true,
    prefixIconData: Icons.lock,
    //suffixIconData: lc.isVisible ? Icons.visibility : Icons.visibility_off,
    //validator: lc.validatePassword,
    onChanged: (value) => null, obscureText: false,
  );
}
