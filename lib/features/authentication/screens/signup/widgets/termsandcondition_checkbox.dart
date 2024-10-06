import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppTermsAndConditionCheckbox extends StatelessWidget {
  const AppTermsAndConditionCheckbox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFucntions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 34,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${AppTexts.AgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: '${AppTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    decoration: TextDecoration.underline,
                    color: isDark ? Colors.white : AppColors.primary),
              ),
              TextSpan(
                  text: '${AppTexts.and} \n',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: '${AppTexts.termsOfUse} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    decoration: TextDecoration.underline,
                    color: isDark ? Colors.white : AppColors.primary),
              ),
            ],
          ),
        )
      ],
    );
  }
}
