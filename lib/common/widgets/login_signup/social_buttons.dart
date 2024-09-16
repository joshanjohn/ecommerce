import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';

class AppSocialButtons extends StatelessWidget {
  const AppSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
              AppImages.google,
            ),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
              AppImages.facebook,
            ),
          ),
        )
      ],
    );
  }
}
