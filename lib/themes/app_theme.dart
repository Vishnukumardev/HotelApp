import '../utils/path_provider.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: primary,
  scaffoldBackgroundColor: white,
  appBarTheme: const AppBarTheme(
    backgroundColor: white,
    foregroundColor: white,
    elevation: 0,
  ),
  colorScheme: const ColorScheme.light(
      primary: primary, secondary: secondary, error: red),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
  ),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  primaryColor: primary,
  scaffoldBackgroundColor: secondary,
  appBarTheme: const AppBarTheme(
    backgroundColor: secondary,
    foregroundColor: white,
    elevation: 0,
  ),
  colorScheme: const ColorScheme.dark(
      primary: primaryDark, secondary: secondaryDark, error: red),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: secondary,
        foregroundColor: secondaryDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
  ),
);
