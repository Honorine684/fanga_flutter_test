import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppSize {
  static double getSize({
    required BuildContext context,
    double defaultValue = 60.0,
    double mobileValue = 40.0,
    double tabletValue = 80.0,
    double desktopValue = 100.0,
    double webValue = 120.0,
    double smallerThanMobileValue = 10.0,
    double largerThanTabletValue = 120.0,
  }) {
    // Utilise webValue si on est sur le web
    if (isWeb(context)) {
      return webValue;
    }
    return ResponsiveValue<double>(
      context,
      defaultValue: defaultValue,
      conditionalValues: [
        Condition.equals(name: MOBILE, value: mobileValue),
        Condition.equals(name: TABLET, value: tabletValue),
        Condition.equals(name: DESKTOP, value: desktopValue),
        Condition.smallerThan(name: MOBILE, value: smallerThanMobileValue),
        Condition.largerThan(name: TABLET, value: largerThanTabletValue),
      ],
    ).value;
  }

  static bool isMobile(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isMobile;
  }

  static bool isTablet(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isTablet;
  }

  static bool isDesktop(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isDesktop;
  }

  static bool isWeb(BuildContext context) {
    return kIsWeb;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  static double responsivePadding(BuildContext context) {
    if (isWeb(context)) return 32.0;
    if (isDesktop(context)) return 32.0;
    if (isTablet(context)) return 16.0;
    if (isMobile(context)) return 8.0;
    return 12.0;
  }
}
