// lib/core/app_theme.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColors {
  AppColors._();

  static final ThemeController _theme = Get.find<ThemeController>();

  // -------------------------
  // Primary Brand Colors (WhatsApp-like / Custom)
  // -------------------------
  static const Color pulsePrimary = Color(0xFFB6F500); // Main bright lime
  static const Color limeLight = Color(0xFFA4DD00); // Lighter shade
  static const Color limeDark = Color(0xFF98CD00); // Darker shade

  static const Color whatsappGreen = pulsePrimary; // Alias for primary
  static const Color whatsappTeal = Color(0xFF128C7E); // Secondary green

  // -------------------------
  // Theme-Aware Colors
  // -------------------------
  // Background
  static Color get scaffoldBackgroundColor => _theme.isDarkMode.value
      ? const Color(0xFF121B22)
      : const Color(0xFFF0F2F5);

  static Color get appBarBackground =>
      _theme.isDarkMode.value ? const Color(0xFF1F2C34) : Colors.white;

  static Color get appWhite =>
      _theme.isDarkMode.value ? const Color(0xFF1F2C34) : Colors.white;

  static Color get appBlack =>
      _theme.isDarkMode.value ? Colors.white : Colors.black;

  static Color get sectionBackground => _theme.isDarkMode.value
      ? const Color(0xFF0E0E0E)
      : const Color(0xFFF8F9FA);

  // Text
  static Color get text => _theme.isDarkMode.value
      ? const Color(0xFFE9EDEF)
      : const Color(0xFF3B4A54);

  static Color get headingText =>
      _theme.isDarkMode.value ? Colors.white : const Color(0xFF111B21);

  static Color get secondaryText => _theme.isDarkMode.value
      ? const Color(0xFF8696A0)
      : const Color(0xFF667781);

  // Input Fields
  static Color get fieldColor => _theme.isDarkMode.value
      ? const Color(0xFF1F2C34)
      : const Color(0xFFF0F2F5);

  static Color get fieldFontColor => _theme.isDarkMode.value
      ? const Color(0xFFE9EDEF)
      : const Color(0xFF3B4A54);

  static Color get fieldPlaceholder => _theme.isDarkMode.value
      ? const Color(0xFF8696A0)
      : const Color(0xFF9AA8B1);

  static const Color border = Color(0xFFBFBFBF);

  // Message bubbles
  static Color get incomingMessageBg =>
      _theme.isDarkMode.value ? const Color(0xFF1F2C34) : Colors.white;

  static Color get outgoingMessageBg => _theme.isDarkMode.value
      ? const Color(0xFF005C4B)
      : const Color(0xFFD9FDD3);
  // -------------------------
  // Theme-Aware Greys
  // -------------------------
  static Color get greyLight => _theme.isDarkMode.value
      ? const Color(0xFF2C2F33)
      : const Color(0xFFE9ECEF);

  static Color get greyMedium => _theme.isDarkMode.value
      ? const Color(0xFF3A3D42)
      : const Color(0xFFADB5BD);

  static Color get greyDark => _theme.isDarkMode.value
      ? const Color(0xFF54595F)
      : const Color(0xFF495057);

  static Color get greyText => _theme.isDarkMode.value
      ? const Color(0xFFB0B3B8)
      : const Color(0xFF6C757D);

  static Color get iconBg => _theme.isDarkMode.value
      ? Colors.white.withOpacity(0.08)
      : greyLight.withOpacity(0.08);

  static Color get iconShadow => _theme.isDarkMode.value
      ? Colors.black.withOpacity(0.2)
      : Colors.black.withOpacity(0.05);

  // -------------------------
  // Static Colors
  // -------------------------
  static const Color lightGrey = Color(0xFFF8F9FA);
  static const Color mediumGrey = Color(0xFFE9ECEF);
  static const Color darkGrey = Color(0xFFADB5BD);
  static const Color textGrey = Color(0xFF6C757D);
  static const Color socialGrey = Color(0xFFAAAFBB);

  static const Color successGreen = Color(0xFF4CC9F0);
  static const Color warningYellow = Color(0xFFF8961E);
  static const Color errorRed = Color(0xFFF94144);
  static const Color infoBlue = Color(0xFF577590);
  static const Color appRed = Color(0xFFE33C3C);
  // static const Color lime = Color(0xFFD6F43B);

  // -------------------------
  // Aliases
  // -------------------------
  static Color get primary => pulsePrimary;
  static Color get secondary =>
      _theme.isDarkMode.value ? Colors.white : Colors.black;
  static Color get pulseSecondary => secondary;
  static Color get pulseTertiary =>
      _theme.isDarkMode.value ? Colors.white70 : Colors.black87;

  // -------------------------
  // Misc
  // -------------------------
  static const Color transparent = Colors.transparent;
  static const Color semiTransparent = Color(0x80FFFFFF);
  static const Color semiTransparentBlack = Color(0x80000000);
  static const Color accent = Color(0xFF000000);
  static const Color appSecondary = Color(0xFF005BD2);
  static const Color appPrimary = Color(0xFF000E75);
  static const Color deepPurple = Color(0xFF673AB7);
  static const Color amberColor = Color(0xFFFF8F00);
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color greycolor = Colors.grey;
  static const Color appBlack1 = Color(0xFF0B0E11);
  static const Color greylight = Color(0xFF54595F);
}

// -------------------------
// Theme Controller
// -------------------------
class ThemeController extends GetxController {
  var isDarkMode = false.obs;

  ThemeData get currentTheme =>
      isDarkMode.value ? AppTheme.darkTheme : AppTheme.lightTheme;

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    update();
  }
}

// -------------------------
// App Themes
// -------------------------
class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.pulsePrimary,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.appBarBackground,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.text),
      titleTextStyle: TextStyle(
        color: AppColors.text,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.text),
      bodyMedium: TextStyle(color: AppColors.text),
      bodySmall: TextStyle(color: AppColors.secondaryText),
      titleLarge: TextStyle(color: AppColors.headingText),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.fieldColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      hintStyle: TextStyle(color: AppColors.fieldPlaceholder),
    ),
    colorScheme: ColorScheme.light(
      primary: AppColors.pulsePrimary,
      secondary: AppColors.whatsappGreen,
      surface: AppColors.appWhite,
      background: AppColors.scaffoldBackgroundColor,
      error: AppColors.errorRed,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: AppColors.text,
      onBackground: AppColors.text,
      onError: Colors.white,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.whatsappGreen,
    ),
    useMaterial3: true,
  );

  static ThemeData get darkTheme => ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.pulsePrimary,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.appBarBackground,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.text),
      titleTextStyle: TextStyle(
        color: AppColors.text,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.text),
      bodyMedium: TextStyle(color: AppColors.text),
      bodySmall: TextStyle(color: AppColors.secondaryText),
      titleLarge: TextStyle(color: AppColors.headingText),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.fieldColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      hintStyle: TextStyle(color: AppColors.fieldPlaceholder),
    ),
    colorScheme: ColorScheme.dark(
      primary: AppColors.pulsePrimary,
      secondary: AppColors.whatsappGreen,
      surface: AppColors.appBarBackground,
      background: AppColors.scaffoldBackgroundColor,
      error: AppColors.errorRed,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: AppColors.text,
      onBackground: AppColors.text,
      onError: Colors.white,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.whatsappGreen,
    ),
    useMaterial3: true,
  );
}





// // lib/core/app_theme.dart
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class AppColors {
//   AppColors._();

//   static final ThemeController _theme = Get.find<ThemeController>();

//   // -------------------------
//   // Primary Brand Colors
//   // -------------------------
//   static const Color primaryBrand = Color(0xFF08CB00); // WhatsApp-like green
//   static const Color secondaryBrand = Color(0xFF128C7E); // Teal accent
  
//   // -------------------------
//   // Core Theme Colors
//   // -------------------------
//   // Backgrounds
//   static Color get scaffoldBg =>
//       _theme.isDarkMode.value ? const Color(0xFF121B22) : const Color(0xFFF0F2F5);
      
//   static Color get appBarBg =>
//       _theme.isDarkMode.value ? const Color(0xFF1F2C34) : Colors.white;
      
//   static Color get cardBg =>
//       _theme.isDarkMode.value ? const Color(0xFF1F2C34) : Colors.white;
      
//   static Color get dialogBg =>
//       _theme.isDarkMode.value ? const Color(0xFF1F2C34) : Colors.white;
      
//   static Color get bottomSheetBg =>
//       _theme.isDarkMode.value ? const Color(0xFF1F2C34) : Colors.white;

//   // Text
//   static Color get textPrimary =>
//       _theme.isDarkMode.value ? const Color(0xFFE9EDEF) : const Color(0xFF3B4A54);
      
//   static Color get textSecondary =>
//       _theme.isDarkMode.value ? const Color(0xFF8696A0) : const Color(0xFF667781);
      
//   static Color get textHeading =>
//       _theme.isDarkMode.value ? Colors.white : const Color(0xFF111B21);
      
//   static Color get textDisabled =>
//       _theme.isDarkMode.value ? const Color(0xFF5E6D76) : const Color(0xFFA7B4BC);

//   // Input Fields
//   static Color get inputBg =>
//       _theme.isDarkMode.value ? const Color(0xFF1F2C34) : const Color(0xFFF0F2F5);
      
//   static Color get inputText =>
//       _theme.isDarkMode.value ? const Color(0xFFE9EDEF) : const Color(0xFF3B4A54);
      
//   static Color get inputHint =>
//       _theme.isDarkMode.value ? const Color(0xFF8696A0) : const Color(0xFF9AA8B1);
      
//   static Color get inputBorder =>
//       _theme.isDarkMode.value ? const Color(0xFF2A3942) : const Color(0xFFE0E5E9);

//   // Buttons
//   static Color get buttonPrimary =>
//       _theme.isDarkMode.value ? primaryBrand : primaryBrand;
      
//   static Color get buttonSecondary =>
//       _theme.isDarkMode.value ? const Color(0xFF2A3942) : const Color(0xFFE0E5E9);
      
//   static Color get buttonTextPrimary => Colors.white;
//   static Color get buttonTextSecondary => textPrimary;
//   static Color get buttonDisabled =>
//       _theme.isDarkMode.value ? const Color(0xFF2A3942) : const Color(0xFFE0E5E9);

//   // Icons
//   static Color get iconPrimary =>
//       _theme.isDarkMode.value ? const Color(0xFFAEBAC1) : const Color(0xFF54656F);
      
//   static Color get iconSecondary =>
//       _theme.isDarkMode.value ? const Color(0xFF8696A0) : const Color(0xFFA7B4BC);
      
//   static Color get iconActive => primaryBrand;

//   // Dividers
//   static Color get divider =>
//       _theme.isDarkMode.value ? const Color(0xFF2A3942) : const Color(0xFFE0E5E9);

//   // Message Bubbles
//   static Color get incomingMessageBg =>
//       _theme.isDarkMode.value ? const Color(0xFF1F2C34) : Colors.white;
      
//   static Color get outgoingMessageBg =>
//       _theme.isDarkMode.value ? const Color(0xFF005C4B) : const Color(0xFFD9FDD3);
      
//   static Color get incomingMessageText => textPrimary;
//   static Color get outgoingMessageText =>
//       _theme.isDarkMode.value ? Colors.white : const Color(0xFF111B21);

//   // Status Indicators
//   static Color get onlineStatus => const Color(0xFF00D35D);
//   static Color get offlineStatus => const Color(0xFFA7B4BC);
//   static Color get typingIndicator => const Color(0xFF08CB00);

//   // System Colors
//   static const Color success = Color(0xFF4CC9F0);
//   static const Color warning = Color(0xFFF8961E);
//   static const Color error = Color(0xFFF94144);
//   static const Color info = Color(0xFF577590);

//   // Static Colors
//   static const Color white = Colors.white;
//   static const Color black = Colors.black;
//   static const Color transparent = Colors.transparent;
//   static const Color grey = Colors.grey;
//   static const Color red = Colors.red;
//   static const Color blue = Colors.blue;
//   static const Color green = Colors.green;
//   static const Color yellow = Colors.yellow;
//   static const Color orange = Colors.orange;
//   static const Color purple = Colors.purple;
// }

// // -------------------------
// // App Text Styles
// // -------------------------
// class AppTextStyles {
//   AppTextStyles._();

//   static TextStyle get displayLarge => TextStyle(
//         fontSize: 32,
//         fontWeight: FontWeight.bold,
//         color: AppColors.textHeading,
//       );

//   static TextStyle get displayMedium => TextStyle(
//         fontSize: 28,
//         fontWeight: FontWeight.bold,
//         color: AppColors.textHeading,
//       );

//   static TextStyle get headlineLarge => TextStyle(
//         fontSize: 24,
//         fontWeight: FontWeight.bold,
//         color: AppColors.textHeading,
//       );

//   static TextStyle get headlineMedium => TextStyle(
//         fontSize: 20,
//         fontWeight: FontWeight.bold,
//         color: AppColors.textHeading,
//       );

//   static TextStyle get headlineSmall => TextStyle(
//         fontSize: 18,
//         fontWeight: FontWeight.bold,
//         color: AppColors.textHeading,
//       );

//   static TextStyle get titleLarge => TextStyle(
//         fontSize: 16,
//         fontWeight: FontWeight.w600,
//         color: AppColors.textPrimary,
//       );

//   static TextStyle get titleMedium => TextStyle(
//         fontSize: 14,
//         fontWeight: FontWeight.w600,
//         color: AppColors.textPrimary,
//       );

//   static TextStyle get titleSmall => TextStyle(
//         fontSize: 12,
//         fontWeight: FontWeight.w600,
//         color: AppColors.textPrimary,
//       );

//   static TextStyle get bodyLarge => TextStyle(
//         fontSize: 16,
//         fontWeight: FontWeight.normal,
//         color: AppColors.textPrimary,
//       );

//   static TextStyle get bodyMedium => TextStyle(
//         fontSize: 14,
//         fontWeight: FontWeight.normal,
//         color: AppColors.textPrimary,
//       );

//   static TextStyle get bodySmall => TextStyle(
//         fontSize: 12,
//         fontWeight: FontWeight.normal,
//         color: AppColors.textSecondary,
//       );

//   static TextStyle get labelLarge => TextStyle(
//         fontSize: 14,
//         fontWeight: FontWeight.w500,
//         color: AppColors.textPrimary,
//       );

//   static TextStyle get labelMedium => TextStyle(
//         fontSize: 12,
//         fontWeight: FontWeight.w500,
//         color: AppColors.textSecondary,
//       );

//   static TextStyle get labelSmall => TextStyle(
//         fontSize: 10,
//         fontWeight: FontWeight.w500,
//         color: AppColors.textSecondary,
//       );

//   // Custom text styles
//   static TextStyle get messageText => TextStyle(
//         fontSize: 16,
//         fontWeight: FontWeight.normal,
//         color: AppColors.textPrimary,
//       );

//   static TextStyle get timestampText => TextStyle(
//         fontSize: 10,
//         fontWeight: FontWeight.normal,
//         color: AppColors.textSecondary,
//       );
// }

// // -------------------------
// // App Widget Styles
// // -------------------------
// class AppWidgetStyles {
//   AppWidgetStyles._();

//   // Buttons
//   static ButtonStyle get primaryButton => ElevatedButton.styleFrom(
//         backgroundColor: AppColors.buttonPrimary,
//         foregroundColor: AppColors.buttonTextPrimary,
//         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         textStyle: AppTextStyles.labelLarge,
//       );

//   static ButtonStyle get secondaryButton => ElevatedButton.styleFrom(
//         backgroundColor: AppColors.buttonSecondary,
//         foregroundColor: AppColors.buttonTextSecondary,
//         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//           side: BorderSide(color: AppColors.divider),
//         ),
//         textStyle: AppTextStyles.labelLarge,
//       );

//   static ButtonStyle get textButton => TextButton.styleFrom(
//         foregroundColor: AppColors.primaryBrand,
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         textStyle: AppTextStyles.labelLarge,
//       );

//   static ButtonStyle get iconButton => IconButton.styleFrom(
//         foregroundColor: AppColors.iconPrimary,
//         backgroundColor: Colors.transparent,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//       );

//   // Cards
//   static BoxDecoration get cardDecoration => BoxDecoration(
//         color: AppColors.cardBg,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.black.withOpacity(0.1),
//             blurRadius: 6,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       );

//   // Input Fields
//   static InputDecoration get inputDecoration => InputDecoration(
//         filled: true,
//         fillColor: AppColors.inputBg,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: BorderSide.none,
//         ),
//         contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//         hintStyle: AppTextStyles.bodyMedium.copyWith(color: AppColors.inputHint),
//         errorStyle: AppTextStyles.labelSmall.copyWith(color: AppColors.error),
//       );

//   // Dividers
//   static Divider get divider => Divider(
//         height: 1,
//         thickness: 1,
//         color: AppColors.divider,
//       );
// }

// // -------------------------
// // Theme Controller
// // -------------------------
// class ThemeController extends GetxController {
//   var isDarkMode = false.obs;

//   ThemeData get currentTheme =>
//       isDarkMode.value ? AppTheme.darkTheme : AppTheme.lightTheme;

//   void toggleTheme() {
//     isDarkMode.value = !isDarkMode.value;
//     update();
//   }
// }

// // -------------------------
// // App Themes
// // -------------------------
// class AppTheme {
//   static ThemeData get lightTheme => ThemeData(
//         useMaterial3: true,
//         brightness: Brightness.light,
//         primaryColor: AppColors.primaryBrand,
//         scaffoldBackgroundColor: AppColors.scaffoldBg,
//         appBarTheme: AppBarTheme(
//           backgroundColor: AppColors.appBarBg,
//           elevation: 0,
//           centerTitle: true,
//           iconTheme: IconThemeData(color: AppColors.iconPrimary),
//           titleTextStyle: AppTextStyles.headlineSmall,
//         ),
//         textTheme: TextTheme(
//           displayLarge: AppTextStyles.displayLarge,
//           displayMedium: AppTextStyles.displayMedium,
//           headlineLarge: AppTextStyles.headlineLarge,
//           headlineMedium: AppTextStyles.headlineMedium,
//           headlineSmall: AppTextStyles.headlineSmall,
//           titleLarge: AppTextStyles.titleLarge,
//           titleMedium: AppTextStyles.titleMedium,
//           titleSmall: AppTextStyles.titleSmall,
//           bodyLarge: AppTextStyles.bodyLarge,
//           bodyMedium: AppTextStyles.bodyMedium,
//           bodySmall: AppTextStyles.bodySmall,
//           labelLarge: AppTextStyles.labelLarge,
//           labelMedium: AppTextStyles.labelMedium,
//           labelSmall: AppTextStyles.labelSmall,
//         ),
//         inputDecorationTheme: InputDecorationTheme(
//           filled: true,
//           fillColor: AppColors.inputBg,
//           contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8),
//             borderSide: BorderSide.none,
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8),
//             borderSide: BorderSide(color: AppColors.inputBorder),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8),
//             borderSide: BorderSide(color: AppColors.primaryBrand),
//           ),
//           errorBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8),
//             borderSide: BorderSide(color: AppColors.error),
//           ),
//           hintStyle: AppTextStyles.bodyMedium.copyWith(color: AppColors.inputHint),
//           labelStyle: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary),
//           errorStyle: AppTextStyles.labelSmall.copyWith(color: AppColors.error),
//         ),
//         cardTheme: CardTheme(
//           color: AppColors.cardBg,
//           elevation: 0,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           margin: EdgeInsets.zero,
//         ),
//         buttonTheme: ButtonThemeData(
//           buttonColor: AppColors.buttonPrimary,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8),
//           ),
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: AppWidgetStyles.primaryButton,
//         ),
//         textButtonTheme: TextButtonThemeData(
//           style: AppWidgetStyles.textButton,
//         ),
//         iconButtonTheme: IconButtonThemeData(
//           style: AppWidgetStyles.iconButton,
//         ),
//         dividerTheme: DividerThemeData(
//           color: AppColors.divider,
//           thickness: 1,
//           space: 1,
//         ),
//         floatingActionButtonTheme: FloatingActionButtonThemeData(
//           backgroundColor: AppColors.primaryBrand,
//           foregroundColor: AppColors.white,
//         ),
//         colorScheme: ColorScheme.light(
//           primary: AppColors.primaryBrand,
//           secondary: AppColors.secondaryBrand,
//           surface: AppColors.cardBg,
//           background: AppColors.scaffoldBg,
//           error: AppColors.error,
//           onPrimary: AppColors.white,
//           onSecondary: AppColors.white,
//           onSurface: AppColors.textPrimary,
//           onBackground: AppColors.textPrimary,
//           onError: AppColors.white,
//         ),
//       );

//   static ThemeData get darkTheme => ThemeData(
//         useMaterial3: true,
//         brightness: Brightness.dark,
//         primaryColor: AppColors.primaryBrand,
//         scaffoldBackgroundColor: AppColors.scaffoldBg,
//         appBarTheme: AppBarTheme(
//           backgroundColor: AppColors.appBarBg,
//           elevation: 0,
//           centerTitle: true,
//           iconTheme: IconThemeData(color: AppColors.iconPrimary),
//           titleTextStyle: AppTextStyles.headlineSmall,
//         ),
//         textTheme: TextTheme(
//           displayLarge: AppTextStyles.displayLarge,
//           displayMedium: AppTextStyles.displayMedium,
//           headlineLarge: AppTextStyles.headlineLarge,
//           headlineMedium: AppTextStyles.headlineMedium,
//           headlineSmall: AppTextStyles.headlineSmall,
//           titleLarge: AppTextStyles.titleLarge,
//           titleMedium: AppTextStyles.titleMedium,
//           titleSmall: AppTextStyles.titleSmall,
//           bodyLarge: AppTextStyles.bodyLarge,
//           bodyMedium: AppTextStyles.bodyMedium,
//           bodySmall: AppTextStyles.bodySmall,
//           labelLarge: AppTextStyles.labelLarge,
//           labelMedium: AppTextStyles.labelMedium,
//           labelSmall: AppTextStyles.labelSmall,
//         ),
//         inputDecorationTheme: InputDecorationTheme(
//           filled: true,
//           fillColor: AppColors.inputBg,
//           contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8),
//             borderSide: BorderSide.none,
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8),
//             borderSide: BorderSide(color: AppColors.inputBorder),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8),
//             borderSide: BorderSide(color: AppColors.primaryBrand),
//           ),
//           errorBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8),
//             borderSide: BorderSide(color: AppColors.error),
//           ),
//           hintStyle: AppTextStyles.bodyMedium.copyWith(color: AppColors.inputHint),
//           labelStyle: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary),
//           errorStyle: AppTextStyles.labelSmall.copyWith(color: AppColors.error),
//         ),
//         cardTheme: CardTheme(
//           color: AppColors.cardBg,
//           elevation: 0,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           margin: EdgeInsets.zero,
//         ),
//         buttonTheme: ButtonThemeData(
//           buttonColor: AppColors.buttonPrimary,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8),
//           ),
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: AppWidgetStyles.primaryButton,
//         ),
//         textButtonTheme: TextButtonThemeData(
//           style: AppWidgetStyles.textButton,
//         ),
//         iconButtonTheme: IconButtonThemeData(
//           style: AppWidgetStyles.iconButton,
//         ),
//         dividerTheme: DividerThemeData(
//           color: AppColors.divider,
//           thickness: 1,
//           space: 1,
//         ),
//         floatingActionButtonTheme: FloatingActionButtonThemeData(
//           backgroundColor: AppColors.primaryBrand,
//           foregroundColor: AppColors.white,
//         ),
//         colorScheme: ColorScheme.dark(
//           primary: AppColors.primaryBrand,
//           secondary: AppColors.secondaryBrand,
//           surface: AppColors.cardBg,
//           background: AppColors.scaffoldBg,
//           error: AppColors.error,
//           onPrimary: AppColors.white,
//           onSecondary: AppColors.white,
//           onSurface: AppColors.textPrimary,
//           onBackground: AppColors.textPrimary,
//           onError: AppColors.white,
//         ),
//       );
// }