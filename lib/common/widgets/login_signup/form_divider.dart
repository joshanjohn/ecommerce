import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppFormDivider extends StatelessWidget {
  const AppFormDivider({
    super.key, required this.dividerText,
    
  });
  final String dividerText;

  @override
  Widget build(BuildContext ctx) {
     final bool isDark = AppHelperFucntions.isDarkMode(ctx);
    final _theme = Theme.of(ctx);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
          color: isDark ? AppColors.darkGrey : AppColors.grey,
          thickness: 0.5,
          indent: 60,
          endIndent: 5,
        )),
        Text(
          dividerText,
          style: _theme.textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: isDark ? AppColors.darkGrey : AppColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}

