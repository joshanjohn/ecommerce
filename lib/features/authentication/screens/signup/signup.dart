import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(AppTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              const AppSignUpForm(),
              const SizedBox(height: AppSizes.spaceBtwInputFields),

              // divider
              AppFormDivider(dividerText: AppTexts.orSignUpWith.capitalize!),
              const SizedBox(height: AppSizes.spaceBtwInputFields),

              // social buttons
              const AppSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
