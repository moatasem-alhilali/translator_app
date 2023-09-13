import 'package:flutter/material.dart';
import '/core/resources/assets_fonts.dart';

enum ToolAppThemeType { light, dark }

ThemeData lightTheme = ThemeData(
  ///Colors
  colorScheme: const ColorScheme.light(
    primary: LightColors.primary,
    secondary: Colors.white,
    background: LightColors.primary,
  ),
  scaffoldBackgroundColor: Colors.white,
  primaryColor: LightColors.primary,
  splashColor: LightColors.primary,
  canvasColor: LightColors.black,
  //default color of text
  primaryColorLight: Colors.black,
  fontFamily: AssetsArFonts.regular,

  brightness: Brightness.light,

  ///dividerTheme
  dividerColor: Colors.grey.withOpacity(0.5),
  dividerTheme: DividerThemeData(
    thickness: 1,
    color: Colors.grey.withOpacity(0.5),
  ),
  useMaterial3: true,

  ///AppBarTheme
  appBarTheme: const AppBarTheme(
    foregroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    shadowColor: Colors.white,
    elevation: 0,
    color: Colors.white,
    scrolledUnderElevation: 0,
    iconTheme: IconThemeData(
      color: Color(0xff393939),
      size: 24,
    ),
    titleTextStyle: TextStyle(
      color: Color(0xff393939),
      fontFamily: AssetsArFonts.medium,
      fontSize: 22,
    ),
  ),

  ///iconTheme
  iconTheme: const IconThemeData(
    color: Color(0xff393939),
    size: 35,
  ),

  ///bottom AppBar Theme
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Color(0xff464c52),
    elevation: 2,
  ),

  ///tab Bar Theme
  tabBarTheme: TabBarTheme(
      labelStyle: const TextStyle(
        color: Colors.black,
        fontFamily: AssetsArFonts.medium,
        fontWeight: FontWeight.bold,
      ),
      labelColor: Colors.black,
      dividerColor: Colors.black,
      indicatorColor: Colors.black,
      unselectedLabelStyle: const TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.bold,
        fontFamily: AssetsArFonts.medium,
      ),
      unselectedLabelColor: Colors.grey,
      indicator: BoxDecoration(
        color: LightColors.primary,
        borderRadius: BorderRadius.circular(15),
      ),
      indicatorSize: TabBarIndicatorSize.tab),
  checkboxTheme: CheckboxThemeData(
    splashRadius: 12,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),

  ///Input Decoration Theme
  inputDecorationTheme: InputDecorationTheme(
    suffixIconColor: LightColors.lapel,

    prefixIconColor: LightColors.lapel,
    iconColor: LightColors.lapel,
    labelStyle: const TextStyle(
      color: LightColors.lapel,
    ),

    suffixStyle: const TextStyle(
      color: LightColors.lapel,
    ),
    prefixStyle: const TextStyle(
      color: LightColors.lapel,
    ),
    // fillColor: LightColors.lapel,
    hintStyle: const TextStyle(
      fontSize: 16,
      color: LightColors.lapel,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(
        color: LightColors.third,
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: LightColors.primary,
        width: 2,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    ),
  ),
  //text Button Theme
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      enableFeedback: false,
      elevation: 0,
      textStyle: const TextStyle(
        color: LightColors.primary,
        fontSize: 16,
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      enableFeedback: false,
      alignment: Alignment.center,
      backgroundColor: Colors.transparent,
      side: const BorderSide(
        color: LightColors.primary,
      ),
      // minimumSize: Size(double.infinity, height),
      padding: const EdgeInsets.all(8),
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: LightColors.primary),
      ),
    ),
  ),

  //elevated Button Theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      enableFeedback: false,
      alignment: Alignment.center,
      backgroundColor: LightColors.primary,
      padding: const EdgeInsets.all(4),
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  ),

  ///iconButtonTheme
  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      // backgroundColor: LightColors.black,
      enableFeedback: false,
      elevation: 0,
      iconSize: 35,
    ),
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: LightColors.primary,
    elevation: 0,
    iconSize: 35,
  ),

  //bottom Sheet Theme
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
    ),
  ),
  //dialog Theme
  dialogTheme: DialogTheme(
    backgroundColor: const Color(0xff1F222A),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),

  //BottomNavigationBarThemeData
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
    backgroundColor: Colors.white.withOpacity(0.4),
    //
    unselectedItemColor: Colors.grey,
    selectedIconTheme: const IconThemeData(
      size: 35,
      color: Colors.black,
    ),
    unselectedIconTheme: const IconThemeData(
      size: 32,
      color: Colors.grey,
    ),
    selectedLabelStyle: const TextStyle(
      fontFamily: AssetsArFonts.semiBold,
    ),
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    elevation: 0,
  ),

  //textTheme
  textTheme: const TextTheme(
    //display
    displaySmall: TextStyle(
      color: LightColors.black,
      fontFamily: AssetsArFonts.regular,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),

    //headline
    headlineSmall: TextStyle(
      color: LightColors.black,
      fontFamily: AssetsArFonts.regular,
      fontSize: 16,
    ),

    //title
    titleSmall: TextStyle(
      color: LightColors.black,
      fontSize: 18,
      fontFamily: AssetsArFonts.regular,
    ),
    titleMedium: TextStyle(
      color: LightColors.black,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontFamily: AssetsArFonts.medium,
    ),
    titleLarge: TextStyle(
      color: LightColors.black,
      fontSize: 22,
      fontWeight: FontWeight.bold,
      fontFamily: AssetsArFonts.regular,
    ),
  ),
);

class LightColors {
  static const Color primary = Color(0xff967090);
  static Color secondary = const Color(0xffef5da8);
  static const Color third = Color(0xffeadbe6);
  static const Color black = Color(0xff282828);
  static const Color lapel = Color(0xff4D515B);
}

TextStyle getDisplayStyle(context) {
  return Theme.of(context).textTheme.displaySmall!;
}

//Get Headline
TextStyle getHeadlineStyle(context) {
  return Theme.of(context).textTheme.headlineSmall!;
}

//Get Title
TextStyle getTitleSmallTheme(context) {
  return Theme.of(context).textTheme.titleSmall!;
}

TextStyle getTitleMediumTheme(context) {
  return Theme.of(context).textTheme.titleMedium!;
}

TextStyle getTitleLargeTheme(context) {
  return Theme.of(context).textTheme.titleLarge!;
}
