import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:sn_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:sn_store/features/authentication/screens/signup/signup.dart';
import 'package:sn_store/navigation_menu.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/constants/text_strings.dart';

class SnLoginForm extends StatelessWidget {
  const SnLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: SnSizes.spaceBtwSections),
        child: Column(
          children: [
            ///Email
            TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: SnTexts.email)),
            const SizedBox(height: SnSizes.spaceBtwInputFields),

            ///Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: SnTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: SnSizes.spaceBtwInputFields / 2),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(SnTexts.rememberMe),
                  ],
                ),
                TextButton(
                    onPressed: () => Get.to(()=> const ForgotPassword()),
                    child: const Text(SnTexts.forgetPassword)),
              ],
            ),
            const SizedBox(
              height: SnSizes.spaceBtwSections,
            ),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed:  () => Get.to(()=> const NavigationMenu()), child: const Text(SnTexts.signIn)),
            ),
            const SizedBox(
              height: SnSizes.spaceBtwItems,
            ),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(()=> const SignupScreen()), child: const Text(SnTexts.createAccount)),
            ),
          ],
        ),
      ),
    );
  }
}
