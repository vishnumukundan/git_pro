import 'package:flutter/material.dart';

const _kButtonPadding = WidgetStatePropertyAll(
  EdgeInsets.symmetric(vertical: 18, horizontal: 18),
);

const _kCircularBorderRadius = BorderRadius.all(Radius.circular(12));
const _kRoundedRectangleBorder = WidgetStatePropertyAll(
  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
);

class ThemeManager {
  static ThemeMode themeMode = ThemeMode.light;
  // static ThemeMode themeMode = ThemeMode.dark;

  static light(BuildContext context) {
    final colorTheme = _ColorScheme(context, themeMode);
    final buttonTheme = _ButtonThemes(context, themeMode);
    final textTheme = _TextThemes(context, themeMode);
    final inputDecoration = _InputDecoration(context, themeMode);

    return ThemeData.light().copyWith(
      colorScheme: colorTheme.theme(),
      textTheme: textTheme.theme(),
      filledButtonTheme: buttonTheme.filledButton(),
      outlinedButtonTheme: buttonTheme.outlinedButton(),
      elevatedButtonTheme: buttonTheme.elevatedButton(),
      textButtonTheme: buttonTheme.textButton(),
      iconButtonTheme: buttonTheme.iconButton(),
      inputDecorationTheme: inputDecoration.theme(),
      floatingActionButtonTheme: buttonTheme.floatingActionButton(),
      scaffoldBackgroundColor: colorTheme.theme().surface,
      dividerTheme: DividerThemeData(
        color: colorTheme.theme().surfaceDim,
      ),
    );
  }

  static dark(BuildContext context) {
    final colorTheme = _ColorScheme(context, themeMode);
    final buttonTheme = _ButtonThemes(context, themeMode);
    final textTheme = _TextThemes(context, themeMode);
    final inputDecoration = _InputDecoration(context, themeMode);

    return ThemeData.dark().copyWith(
      colorScheme: colorTheme.theme(),
      textTheme: textTheme.theme(),
      filledButtonTheme: buttonTheme.filledButton(),
      outlinedButtonTheme: buttonTheme.outlinedButton(),
      elevatedButtonTheme: buttonTheme.elevatedButton(),
      textButtonTheme: buttonTheme.textButton(),
      iconButtonTheme: buttonTheme.iconButton(),
      inputDecorationTheme: inputDecoration.theme(),
      scaffoldBackgroundColor: colorTheme.theme().surface,
    );
  }
}

class _ButtonThemes {
  final BuildContext context;
  final ThemeMode themeMode;
  //
  static late bool isLight;
  static late ColorScheme colorScheme;
  _ButtonThemes(this.context, this.themeMode) {
    isLight = themeMode == ThemeMode.light;
    colorScheme = _ColorScheme(context, themeMode).theme();
  }

  filledButton() {
    return const FilledButtonThemeData(
      style: ButtonStyle(
        padding: _kButtonPadding,
        shape: _kRoundedRectangleBorder,
      ),
    );
  }

  outlinedButton() {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        side: WidgetStatePropertyAll(
          BorderSide(color: Theme.of(context).colorScheme.surfaceDim),
        ),
        padding: _kButtonPadding,
        shape: _kRoundedRectangleBorder,
      ),
    );
  }

  elevatedButton() {
    return const ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: _kButtonPadding,
        shape: _kRoundedRectangleBorder,
      ),
    );
  }

  textButton() {
    return const TextButtonThemeData(
      style: ButtonStyle(
        padding: _kButtonPadding,
        shape: _kRoundedRectangleBorder,
      ),
    );
  }

  iconButton() {
    return IconButtonThemeData(
      style: ButtonStyle(
        side: WidgetStatePropertyAll(
          BorderSide(color: Theme.of(context).colorScheme.surfaceDim),
        ),
        padding: const WidgetStatePropertyAll(EdgeInsets.zero),
        shape: _kRoundedRectangleBorder,
      ),
    );
  }

  floatingActionButton() {
    return const FloatingActionButtonThemeData(
        // backgroundColor: const Color(0xffCFBD00),
        // extendedTextStyle: TextStyle(
        //   color: colorScheme.onPrimary,
        // ),
        );
  }
}

class _InputDecoration {
  final BuildContext context;
  final ThemeMode themeMode;
  //
  static late bool isLight;
  _InputDecoration(this.context, this.themeMode) {
    isLight = themeMode == ThemeMode.light;
  }

  InputDecorationTheme theme() {
    return const InputDecorationTheme(
      outlineBorder: BorderSide(style: BorderStyle.none),
      border: OutlineInputBorder(borderRadius: _kCircularBorderRadius),
    );
  }
}

class _ColorScheme {
  final BuildContext context;
  final ThemeMode themeMode;
  //
  static late bool isLight;
  _ColorScheme(this.context, this.themeMode) {
    isLight = themeMode == ThemeMode.light;
  }

  ColorScheme theme() {
    return isLight
        ? ColorScheme.light(
            //
            primary: getHexColor("301551"),
            onPrimary: getHexColor("FFFFFF"),
            primaryContainer: getHexColor("FECDD3"),
            primaryFixed: getHexColor("FECDD3"),
            primaryFixedDim: getHexColor("FDA4AF"),
            onPrimaryContainer: getHexColor("4C0519"),
            onPrimaryFixed: getHexColor("4C0519"),
            onPrimaryFixedVariant: getHexColor("9F1239"),
            inversePrimary: getHexColor("FDA4AF"),
            //
            secondary: getHexColor("334155"),
            onSecondary: getHexColor("FFFFFF"),
            secondaryContainer: getHexColor("E2E8F0"),
            secondaryFixed: getHexColor("E2E8F0"),
            secondaryFixedDim: getHexColor("CBD5E1"),
            onSecondaryContainer: getHexColor("020617"),
            onSecondaryFixed: getHexColor("020617"),
            onSecondaryFixedVariant: getHexColor("475569"),
            //
            tertiary: getHexColor("BDB200"),
            //
            surface: getHexColor("F8FAFC"),
            surfaceDim: getHexColor("E2E8F0"),
            surfaceBright: getHexColor("F8FAFC"),
            surfaceContainerLow: getHexColor("FFFFFF"),
            surfaceContainerLowest: getHexColor("F1F5F9"),
            surfaceContainer: getHexColor("F1F5F9"),
            surfaceContainerHigh: getHexColor("E2E8F0"),
            surfaceContainerHighest: getHexColor("E2E8F0"),
            inverseSurface: getHexColor("0F172A"),
            onInverseSurface: getHexColor("F1F5F9"),
            onSurface: getHexColor("020617"),
          )
        : ColorScheme.dark(
            primary: getHexColor("BDB200"),
            onPrimary: getHexColor("FDFCFE"),
          );
  }
}

class _TextThemes {
  final BuildContext context;
  final ThemeMode themeMode;
  //
  static late bool isLight;
  static late ColorScheme colorScheme;
  static late Color textColor;
  _TextThemes(this.context, this.themeMode) {
    isLight = themeMode == ThemeMode.light;
    colorScheme = _ColorScheme(context, themeMode).theme();
    textColor = colorScheme.onSurface;
  }

  static const fontFamily = "Poppins";

  TextTheme theme() {
    return TextTheme(
      displayLarge: TextStyle(fontFamily: fontFamily, color: textColor),
      displayMedium: TextStyle(fontFamily: fontFamily, color: textColor),
      displaySmall: TextStyle(fontFamily: fontFamily, color: textColor),
      headlineLarge: TextStyle(fontFamily: fontFamily, color: textColor),
      headlineMedium: TextStyle(fontFamily: fontFamily, color: textColor),
      headlineSmall: TextStyle(fontFamily: fontFamily, color: textColor),
      titleLarge: TextStyle(fontFamily: fontFamily, color: textColor),
      titleMedium: TextStyle(fontFamily: fontFamily, color: textColor),
      titleSmall: TextStyle(fontFamily: fontFamily, color: textColor),
      labelLarge: TextStyle(fontFamily: fontFamily, color: textColor),
      labelMedium: TextStyle(fontFamily: fontFamily, color: textColor),
      labelSmall: TextStyle(fontFamily: fontFamily, color: textColor),
      bodyLarge: TextStyle(fontFamily: fontFamily, color: textColor),
      bodyMedium: TextStyle(fontFamily: fontFamily, color: textColor),
      bodySmall: TextStyle(fontFamily: fontFamily, color: textColor),
    );
  }
}

Color getHexColor(String value) {
  return Color(int.parse("0xff$value"));
}
