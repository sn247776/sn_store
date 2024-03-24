import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sn_store/common/widgets/login_signup/form_divider.dart';
import 'package:sn_store/common/widgets/login_signup/social_buttons.dart';
import 'package:sn_store/features/authentication/screens/signup/verify_email.dart';
import 'package:sn_store/utils/constants/colors.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/constants/text_strings.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SnHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: SnTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: SnSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: SnTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: SnSizes.spaceBtwInputFields,
          ),

          /// Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: SnTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(
            height: SnSizes.spaceBtwInputFields,
          ),

          /// Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: SnTexts.email,
                prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(
            height: SnSizes.spaceBtwInputFields,
          ),

          /// Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: SnTexts.phoneNo,
                prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(
            height: SnSizes.spaceBtwInputFields,
          ),

          /// Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: SnTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: SnSizes.spaceBtwSections,
          ),
          Row(
            children: [
              SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){})),
              const SizedBox(
                width: SnSizes.spaceBtwItems,
              ),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: '${SnTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
                        // TextSpan(text: '${SnTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                        //     color:dark ? SnColors.white : SnColors.primary,
                        //   decoration: TextDecoration.underline,
                        //   decorationColor: dark ? SnColors.white : SnColors.primary,
                        // )),
                        // TextSpan(text: '${SnTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: '${SnTexts.termsOfUse} ', style: Theme.of(context).textTheme.bodySmall!.apply(
                          color:dark ? SnColors.white : SnColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark ? SnColors.white : SnColors.primary,
                        )),
                      ]
                  )
              )
            ],
          ),

          const SizedBox(
            height: SnSizes.spaceBtwSections,
          ),

          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(()=> const VerifyEmailScreen()), child: const Text(SnTexts.createAccount)),
          ),
          const SizedBox(
            height: SnSizes.spaceBtwItems,
          ),

          /// Divider

          SnFormDivider(dividerText: SnTexts.orSignUpWith.capitalize!),

          const SizedBox(
            height: SnSizes.spaceBtwSections,
          ),

          ///Footer
          const SnSocialButtons()

        ],
      ),
    );
  }
}