import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/termsandcondition_checkbox.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AppSignUpForm extends StatelessWidget {
  const AppSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column(
        children: [
          const Row(
            children: [
              // first name
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: AppTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: AppSizes.spaceBtwInputFields),

              //last name
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: AppTexts.LastName,
                    prefixIcon: Icon(Iconsax.user_add),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          // user name
          const TextField(
            decoration: InputDecoration(
              labelText: AppTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          // email
          const TextField(
            decoration: InputDecoration(
              labelText: AppTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          // phone No
          const TextField(
            decoration: InputDecoration(
              labelText: AppTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          // phone No
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: AppTexts.password,
                prefixIcon: Icon(
                  Iconsax.password_check,
                ),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          // terms and condition check box
          const AppTermsAndConditionCheckbox(),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          // sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(()=> verifyEmailScreen());
              },
              child: const Text(AppTexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}

