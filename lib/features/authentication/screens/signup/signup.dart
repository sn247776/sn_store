import 'package:flutter/material.dart';
import 'package:sn_store/common/styles/spacing_style.dart';
import 'package:sn_store/features/authentication/screens/signup/widgets/signup_from.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
              padding: SnSpacingStyle.paddingWithAppBarHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Title
                  Text(
                    SnTexts.signupTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: SnSizes.spaceBtwSections,
                  ),

                  /// Form
                  const SignupForm()
                ],
              )),
        ));
  }
}


