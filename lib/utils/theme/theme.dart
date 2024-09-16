import 'package:ecommerce/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/text_field_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightThemeData = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppAppBarTheme.lighAppBarTheme,
      textTheme: AppTextTheme.lightTextTheme,
      checkboxTheme: AppCheckBoxTheme.lightCheckboxTheme,
      outlinedButtonTheme: AppOutlineButtonTheme.lightOutlineButtonTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
      bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
      inputDecorationTheme: AppTextFieldTheme.lightTextFieldTheme);

  static ThemeData darkThemeData = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppAppBarTheme.darkAppBarTheme,
      textTheme: AppTextTheme.darkTextTheme,
      checkboxTheme: AppCheckBoxTheme.darkCheckboxTheme,
      outlinedButtonTheme: AppOutlineButtonTheme.darkOutlineButtonTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
      bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
      inputDecorationTheme: AppTextFieldTheme.darkTextFieldTheme);
}
