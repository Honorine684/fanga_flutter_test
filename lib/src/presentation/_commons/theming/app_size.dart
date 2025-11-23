import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppSize {
  /// Safe version that doesn't require ResponsiveBreakpoint parent
  /// Use this in AppTheme and other contexts where ResponsiveWrapper might not be available
  static double getSizeSafe({
    required BuildContext context,
    double defaultValue = 60.0,
    double? mobileValue,
    double? tabletValue,
  }) {
    final width = MediaQuery.of(context).size.width;

    // Material Design breakpoints
    if (width < 600) {
      // Mobile
      return mobileValue ?? defaultValue;
    } else if (width < 900) {
      // Tablet
      return tabletValue ??
          (mobileValue != null ? mobileValue * 1.3 : defaultValue);
    } else {
      // Desktop
      return tabletValue ??
          (mobileValue != null ? mobileValue * 1.6 : defaultValue);
    }
  }

  static double getSize({
    required BuildContext context,
    double defaultValue = 60.0,
    double? mobileValue,
    double? tabletValue,
    double? smallerThanMobileValue = 10.0,
    double? largerThanTabbletValue = 80.0,
  }) {
    // Try to use ResponsiveValue, fallback to getSizeSafe if it fails
    try {
      tabletValue =
          tabletValue ?? (mobileValue != null ? mobileValue * 1.3 : null);
      largerThanTabbletValue = tabletValue;
      smallerThanMobileValue = (mobileValue != null ? mobileValue * 0.8 : null);
      return ResponsiveValue(
        context,
        defaultValue: defaultValue,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: mobileValue),
          Condition.equals(name: TABLET, value: tabletValue),
          Condition.smallerThan(name: MOBILE, value: smallerThanMobileValue),
          Condition.largerThan(name: TABLET, value: largerThanTabbletValue),
        ],
      ).value;
    } catch (e) {
      // Fallback to safe version if ResponsiveBreakpoint is not available
      return getSizeSafe(
        context: context,
        defaultValue: defaultValue,
        mobileValue: mobileValue,
        tabletValue: tabletValue,
      );
    }
  }

  static bool isTablet(BuildContext context) {
    try {
      return ResponsiveBreakpoints.of(context).isTablet;
    } catch (e) {
      final width = MediaQuery.of(context).size.width;
      return width >= 600 && width < 900;
    }
  }

  static bool isMobile(BuildContext context) {
    try {
      return ResponsiveBreakpoints.of(context).isMobile;
    } catch (e) {
      final width = MediaQuery.of(context).size.width;
      return width < 600;
    }
  }
}
