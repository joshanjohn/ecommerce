
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/size.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLoginHeader extends StatelessWidget {
  const AppLoginHeader({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFucntions.isDarkMode(context);
    final _theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // logo
        Image.asset(
          height: 150,
          isDark ? AppImages.lightAppLogo : AppImages.darkAppLogo,
        ),
        // title
        Text(
          AppTexts.LoginTitle,
          style: _theme.textTheme.headlineMedium,
        ),
        const SizedBox(
          height: AppSizes.sm,
        ),
        // sub
        Text(
          AppTexts.LoginSubTitle,
          style: _theme.textTheme.bodyMedium,
        )
      ],
    );
  }
}
