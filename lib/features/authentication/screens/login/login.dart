import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_store/common/widgets/login_signup/form_divider.dart';
import 'package:sn_store/common/widgets/login_signup/social_buttons.dart';
import 'package:sn_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:sn_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:sn_store/styles/spacing_style.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SnSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const SnLoginHeader(),

              /// Form
              const SnLoginForm(),

              /// Divider
              SnFormDivider(dividerText: SnTexts.orSignInWith.capitalize!),

              const SizedBox(
                height: SnSizes.spaceBtwSections,
              ),

              ///Footer
              const SnSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

