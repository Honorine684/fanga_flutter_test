import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';
import 'app_material_color.dart';
import 'app_size.dart';

/// Extension pour accéder facilement au TextTheme
///
/// Usage:
/// ```dart
// ignore: lines_longer_than_80_chars
/// Text('Hello', style: context.textTheme.bodyMedium?.copyWith(color: Colors.red))
/// ```
extension ThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  TextStyle? get bodyText => textTheme.bodyMedium;
  TextStyle? get titleText => textTheme.titleMedium;
  TextStyle? get headlineText => textTheme.headlineSmall;
}

ThemeData buildAppThemeData(BuildContext context) {
  // Tailles responsive par défaut
  final defaultBodySize = AppSize.getSizeSafe(
    context: context,
    mobileValue: 14,
  );
  final defaultTitleSize = AppSize.getSizeSafe(
    context: context,
    mobileValue: 16,
  );
  final defaultHeadlineSize = AppSize.getSizeSafe(
    context: context,
    mobileValue: 20,
  );

  return ThemeData(
    textTheme: GoogleFonts.senTextTheme(
      Theme.of(context).textTheme.copyWith(
        // Titres principaux
        displayLarge: TextStyle(
          fontSize: AppSize.getSizeSafe(context: context, mobileValue: 36),
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        displayMedium: TextStyle(
          fontSize: AppSize.getSizeSafe(context: context, mobileValue: 24),
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
        displaySmall: TextStyle(
          fontSize: defaultHeadlineSize,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        // Headlines
        headlineLarge: TextStyle(
          fontSize: AppSize.getSizeSafe(context: context, mobileValue: 28),
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          fontSize: AppSize.getSizeSafe(context: context, mobileValue: 22),
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          fontSize: AppSize.getSizeSafe(context: context, mobileValue: 18),
          fontWeight: FontWeight.w600,
        ),
        // Titles
        titleLarge: TextStyle(
          fontSize: AppSize.getSizeSafe(context: context, mobileValue: 18),
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          fontSize: defaultTitleSize,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          fontSize: defaultBodySize,
          fontWeight: FontWeight.w500,
        ),
        // Body (TAILLE PAR DÉFAUT pour Text())
        bodyLarge: TextStyle(
          fontSize: defaultTitleSize,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontSize: defaultBodySize, // 14px mobile -> 18px tablet
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          fontSize: AppSize.getSizeSafe(context: context, mobileValue: 12),
          fontWeight: FontWeight.w400,
        ),
        // Labels
        labelLarge: TextStyle(
          fontSize: defaultBodySize,
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          fontSize: AppSize.getSizeSafe(context: context, mobileValue: 12),
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          fontSize: AppSize.getSizeSafe(context: context, mobileValue: 10),
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    visualDensity: VisualDensity.standard,
    scaffoldBackgroundColor: Colors.white,
    primarySwatch: getMaterialColor(AppColors.primary),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 1.5,
      actionsIconTheme: IconThemeData(color: Colors.black),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: AppColors.white,
        ),
        minimumSize: const Size(double.infinity, 55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(0, 48),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: AppColors.primary),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.primary),
        borderRadius: BorderRadius.circular(8),
      ),
      hintStyle: const TextStyle(fontSize: 12),
      fillColor: Colors.white,
      filled: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 18),
    ),
    // indicatorColor: AppColors.primary,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      // circularTrackColor: AppColors.primary,
      // color: AppColors.primary,
      refreshBackgroundColor: AppColors.white,
    ),
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      side: const BorderSide(),
    ),
    expansionTileTheme: const ExpansionTileThemeData(
      iconColor: AppColors.primary,
      shape: RoundedRectangleBorder(),
    ),
  );
}

InputDecoration fieldInputDecoration({
  required BuildContext context,
  String? hintText,
  String? labelText,
  Widget? suffixIcon,
}) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.w300,
      fontSize: AppSize.getSize(context: context, mobileValue: 14),
      color: AppColors.greyNav,
    ),
    labelText: labelText,
    suffixIcon: suffixIcon == null
        ? null
        : Padding(
            padding: EdgeInsets.all(
              AppSize.getSize(context: context, mobileValue: 10),
            ),
            child: suffixIcon,
          ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.greyField),
      borderRadius: BorderRadius.circular(8),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.greyField),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.primary),
      borderRadius: BorderRadius.circular(8),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.greyField),
      borderRadius: BorderRadius.circular(8),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.red),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.red),
      borderRadius: BorderRadius.circular(8),
    ),
  );
}

Widget dropDownHintText(BuildContext context, {required String hintText}) {
  return Text(
    hintText,
    style: TextStyle(
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.w300,
      fontSize: AppSize.getSize(context: context, mobileValue: 14),
      color: AppColors.greyNav,
    ),
  );
}

InputDecoration readOnlyFieldInputDecoration({
  required BuildContext context,
  String? hintText,
}) {
  return InputDecoration(
    hintText: hintText,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(8),
    ),
    fillColor: AppColors.greyGestionTab,
    hintStyle: TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: AppSize.getSize(context: context, mobileValue: 14),
    ),
  );
}

TextStyle fieldTextStyle({required BuildContext context}) {
  return TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: AppSize.getSize(context: context, mobileValue: 14),
    color: AppColors.greyNav,
  );
}
