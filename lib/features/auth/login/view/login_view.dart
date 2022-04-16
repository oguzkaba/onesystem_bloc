import 'package:flutter/material.dart';
import 'package:onesystem_bloc/core/constants/colors/colors_constants.dart';
import 'package:onesystem_bloc/core/constants/images/image_constants.dart';
import 'package:onesystem_bloc/core/extansions/context_extension.dart';
import 'package:onesystem_bloc/features/auth/login/view/widgets/change_prj_and_lang_widget.dart';
import 'package:onesystem_bloc/features/auth/login/view/widgets/form_widget.dart';
import 'package:onesystem_bloc/features/auth/login/view/widgets/swipe_widget.dart';
import 'package:onesystem_bloc/widgets/responsive_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

    return SafeArea(
      child: Scaffold(
          body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Container(
                //padding: EdgeInsets.only(left: sizeWidth * .05),
                //color: tc.isColorChangeDW(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(ImageConstants.instance.darkLogo,
                          height: keyboardOpen ? 0 : 60),
                    ),
                    SizedBox(height: keyboardOpen ? 0 : context.height * .03),
                    const ChangeProjectAndLangWidget(),
                    const FormWidget(),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.admin_panel_settings,
                                color: ColorsConstants.pink, size: 30),
                            Text('Login to ADMIN',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: ColorsConstants.pink))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          !Responsive.isMobile(context)
              ? Expanded(
                  flex: Responsive.isTablet(context) ? 4 : 6,
                  child: const SwipeWidget(),
                )
              : Container()
        ],
      )),
    );
  }
}
