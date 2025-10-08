import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// --- COLOR CONSTANTS (Dart 0xAARRGGBB Format) ---
// These colors ensure a cool, professional aesthetic for a developer portfolio.

// Universal Accent Color (Key actions, headings, buttons)
const Color kAccentBlue = Color(0xFF007BFF); // Electric Blue

// Light Theme Colors
const Color kLightPrimaryText = Color(0xFF2C3E50); // Dark Slate Blue
const Color kLightSecondaryText = Color(0xFF3F4647); // Muted Cool Gray
const Color kLightBackground = Color(
  0xFFF0F4F8,
); // Very Light Steel Gray (Page Background)
const Color kLightAppBar = Color(
  0xFFFFFFFF,
); // Pure White (App Bar & Card Surface)
const Color kLightOutline = Color(0xFFE0E5EA); // Divider/Outline color

// Dark Theme Colors
const Color kDarkPrimaryText = Color(0xFFEAEAEA); // Light Gray
const Color kDarkSecondaryText = Color(0xFFA0B5CD); // Muted Light Blue-Gray
const Color kDarkBackground = Color(
  0xFF0B1623,
); // Deep Navy/Black (Page Background)
const Color kDarkAppBar = Color(
  0xFF1F2833,
); // Dark Slate Gray (App Bar & Card Surface)
const Color kDarkOutline = Color(0xFF324050); // Divider/Outline color

//Text colours
const Color kHeadingMediumColourLight = Color(0xFF2E2E2E);
const Color kHeadingMediumColourDark = Color(0xFFE0E0E0);

const Color kLabelLargeTextLight = Colors.black;

// --- 1. LIGHT THEME DATA ---

final ThemeData lightThemeData = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  fontFamily: 'Inter',
  scaffoldBackgroundColor: kLightBackground,
  cardColor: Colors.black,

  colorScheme: ColorScheme.light(
    primary: kAccentBlue,
    onPrimary: kLightAppBar,
    surface: kLightAppBar,
    onSurface: kLightPrimaryText,
    surfaceContainerHighest: kLightOutline,
    error: Colors.red,
    outline: kLightOutline, // Used for borders, dividers, etc.

  ),

  appBarTheme: AppBarTheme(
    backgroundColor: kLightAppBar,
    foregroundColor: kLightPrimaryText,
    elevation: 0,
    shadowColor: kLightOutline,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: kAccentBlue, // Headings/Titles use the accent color
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ),
  ),

  textTheme: TextTheme(
    headlineLarge: TextStyle(
      color: kHeadingMediumColourLight,
      fontSize: 100.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: kHeadingMediumColourLight,
      fontSize: 40.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      color: kHeadingMediumColourLight,
      fontSize: 30.sp,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(color: kLightPrimaryText, fontSize: 25.sp),
    bodyMedium: TextStyle(color: kLightSecondaryText, fontSize: 14.sp),
    bodySmall: TextStyle(color: kLightSecondaryText, fontSize: 14.sp),
    labelLarge: TextStyle(
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
      fontSize: 20.sp,
      color: kLabelLargeTextLight,
    ),
    labelMedium: TextStyle(fontSize: 20.sp, color: kHeadingMediumColourLight),
  ),

  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.r)),
      borderSide: BorderSide(color: kLightOutline),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: kDarkPrimaryText,
      foregroundColor: kLightPrimaryText,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3.0))),
        side: BorderSide(
          color: Colors.black,
          width: 1.w,
        ),
    )
  )
);

final ThemeData darkThemeData = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  fontFamily: 'Inter',
  scaffoldBackgroundColor: kDarkBackground,
    cardColor: Colors.white,

    colorScheme: ColorScheme.dark(
    primary: kAccentBlue,
    onPrimary: kDarkBackground,
    surface: kDarkAppBar,
    onSurface: kDarkPrimaryText,
    surfaceContainerHighest: kDarkAppBar,
    error: Colors.red.shade400,
    outline: kDarkOutline,
  ),

  appBarTheme: AppBarTheme(
    backgroundColor: kDarkAppBar,
    foregroundColor: kDarkPrimaryText,
    elevation: 0,
    shadowColor: Colors.black,
    centerTitle: true,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
    ),
  ),

  textTheme: TextTheme(
    headlineLarge: TextStyle(
      color: kHeadingMediumColourDark,
      fontSize: 100.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: kHeadingMediumColourDark,
      fontSize: 40.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      color: kHeadingMediumColourDark,
      fontSize: 30.sp,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(color: kDarkPrimaryText, fontSize: 25.sp),
    bodyMedium: TextStyle(color: kDarkPrimaryText, fontSize: 40.sp),
    bodySmall: TextStyle(color: kDarkSecondaryText, fontSize: 14.sp),
    labelLarge: TextStyle(
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
      fontSize: 20.sp,
      color: kDarkSecondaryText,
    ),
    labelMedium: TextStyle(fontSize: 20.sp, color: kHeadingMediumColourDark),
  ),
  iconTheme: IconThemeData(
    color: Colors.white,
  ),

  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.r)),
      borderSide: BorderSide(color: kDarkOutline),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: kLightPrimaryText,
      foregroundColor: kDarkPrimaryText,
      padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 24.h,),
      elevation: 4.w,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
    ),
  ),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(iconColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3.0))),
          side: BorderSide(
            color: Colors.white,
            width: 1.w,
          ),
        )
    )
);
