import 'package:ecommerce/common/styles/spacing_style.dart';
import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddinWithAppBarHeight,
          child: Column(
            children: [
              // -- Logo, Title & sub tile
              AppLoginHeader(),
              // -- Form
              AppLoginForm(),

              // Divider
              AppFormDivider(dividerText: AppTexts.orSignInwith),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Footer
              AppSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
