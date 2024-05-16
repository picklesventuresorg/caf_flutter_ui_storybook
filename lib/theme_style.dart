import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';

// class ThemeStyle {
//   ThemeStyle._();

//   static ThemeData theme() {
//     return ThemeData(
//         fontFamily: "SourceSansPro",
//         primaryColor: AppColors.kcPrimaryColor,
//         primaryColorDark: AppColors.blue100,
//         primaryColorLight: AppColors.blue120,
//         shadowColor: AppColors.grey20,
//         scaffoldBackgroundColor: AppColors.background,
//         backgroundColor: AppColors.background,
//         dialogBackgroundColor: AppColors.white,
//         cardColor: AppColors.white,
//         dividerColor: AppColors.grey70,
//         disabledColor: AppColors.grey40,
//         indicatorColor: AppColors.kcPrimaryColor,
//         hintColor: AppColors.kcPrimaryColor,
//         errorColor: AppColors.red100,
//         iconTheme: iconThemeData(),
//         appBarTheme: appBarTheme(),
//         elevatedButtonTheme: elevatedButtonThemeData(),
//         outlinedButtonTheme: outlinedButtonThemeData(),
//         textButtonTheme: textButtonThemeData(),
//         textTheme: textTheme(),
//         cardTheme: cardTheme(),
//         inputDecorationTheme: inputDecorationTheme(),
//         timePickerTheme: timePickerTheme());
//   }

//   static OutlinedButtonThemeData outlinedButtonThemeData() {
//     return OutlinedButtonThemeData(
//         style: OutlinedButton.styleFrom(
//                 backgroundColor: AppColors.transparent,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(6.0),
//                     side: const BorderSide(
//                         color: AppColors.kcPrimaryColor, width: 2.0)),
//                 foregroundColor: AppColors.kcPrimaryColor,
//                 textStyle: textTheme().labelLarge)
//             .copyWith(
//       side: MaterialStateProperty.resolveWith<BorderSide>(
//         (Set<MaterialState> states) {
//           return const BorderSide(
//             color: AppColors.kcPrimaryColor,
//             width: 1,
//           ); // Defer to the widget's default.
//         },
//       ),
//     ));
//   }

//   static TextButtonThemeData textButtonThemeData() {
//     return TextButtonThemeData(
//         style: TextButton.styleFrom(
//             foregroundColor: AppColors.kcPrimaryColor,
//             textStyle: textTheme().labelLarge));
//   }

//   static ElevatedButtonThemeData elevatedButtonThemeData() {
//     return ElevatedButtonThemeData(
//         style: ElevatedButton.styleFrom(
//                 backgroundColor: AppColors.kcPrimaryColor,
//                 textStyle: textTheme().labelLarge)
//             .copyWith(
//                 foregroundColor: MaterialStateProperty.resolveWith<Color?>(
//       (Set<MaterialState> states) {
//         return AppColors.white;
//       },
//     ), shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
//       return RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0));
//     })));
//   }

//   static IconThemeData iconThemeData() {
//     return const IconThemeData(color: AppColors.white, size: 24.0);
//   }

//   static AppBarTheme appBarTheme() {
//     return const AppBarTheme(
//         titleTextStyle: TextStyle(
//             fontFamily: "SourceSansPro",
//             color: AppColors.white,
//             fontSize: 20.0),
//         elevation: 0.0,
//         backgroundColor: AppColors.kcPrimaryColor);
//   }

//   static CardTheme cardTheme() {
//     return const CardTheme(
//         color: AppColors.white,
//         elevation: 6.0,
//         shadowColor: AppColors.grey70,
//         margin: EdgeInsets.all(5.0));
//   }

//   static TextTheme textTheme() {
//     return const TextTheme(
//         labelLarge: TextStyle(
//             fontFamily: "SourceSansPro",
//             color: AppColors.white,
//             fontSize: 16.0,
//             fontWeight: FontWeight.w500,
//             letterSpacing: 1.25),
//         labelSmall: TextStyle(
//             fontFamily: "SourceSansPro",
//             color: AppColors.kcPrimaryColor,
//             fontSize: 14.0,
//             fontWeight: FontWeight.w300),
//         labelMedium: TextStyle(
//             fontFamily: "SourceSansPro",
//             color: AppColors.grey70,
//             fontSize: 12.0,
//             fontWeight: FontWeight.w400),
//         titleLarge: TextStyle(
//             fontFamily: "SourceSansPro",
//             color: AppColors.black,
//             fontSize: 24.0,
//             fontWeight: FontWeight.w500),
//         titleMedium: TextStyle(
//             fontFamily: "SourceSansPro",
//             color: AppColors.black,
//             fontSize: 22.0,
//             fontWeight: FontWeight.w500),
//         titleSmall: TextStyle(
//             fontFamily: "SourceSansPro",
//             color: AppColors.black,
//             fontSize: 20.0,
//             fontWeight: FontWeight.w500),
//         bodyLarge: TextStyle(
//             fontFamily: "SourceSansPro",
//             color: AppColors.black,
//             fontWeight: FontWeight.w400,
//             fontSize: 14),
//         bodyMedium: TextStyle(
//             fontFamily: "SourceSansPro",
//             color: AppColors.black,
//             fontWeight: FontWeight.w200,
//             fontSize: 14),
//         bodySmall: TextStyle(
//             fontFamily: "SourceSansPro",
//             color: AppColors.black,
//             fontWeight: FontWeight.w600,
//             fontSize: 14));
//   }

//   static InputDecorationTheme inputDecorationTheme() {
//     var borderRadius = BorderRadius.circular(12.0);
//     return InputDecorationTheme(
//       labelStyle: textTheme().bodyLarge?.copyWith(color: AppColors.grey70),
//       floatingLabelStyle:
//           textTheme().bodyLarge?.copyWith(color: AppColors.kcPrimaryColor),
//       helperStyle: textTheme().bodySmall?.copyWith(color: AppColors.grey70),
//       hintStyle: textTheme().bodyLarge?.copyWith(color: AppColors.grey70),
//       errorStyle: textTheme()
//           .bodySmall
//           ?.copyWith(color: AppColors.red110, fontSize: 12.0),
//       counterStyle: textTheme()
//           .bodyLarge
//           ?.copyWith(color: AppColors.grey50, fontSize: 12.0),
//       prefixStyle: textTheme().bodyLarge?.copyWith(color: AppColors.grey50),
//       suffixStyle: textTheme().bodyLarge?.copyWith(color: AppColors.grey50),
//       prefixIconColor: AppColors.grey100,
//       suffixIconColor: AppColors.grey100,
//       contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
//       floatingLabelBehavior: FloatingLabelBehavior.auto,
//       filled: true,
//       fillColor: AppColors.white,
//       focusColor: AppColors.white,
//       border: OutlineInputBorder(
//         borderRadius: borderRadius,
//         borderSide: const BorderSide(color: AppColors.grey70),
//       ),
//       disabledBorder: OutlineInputBorder(
//         borderRadius: borderRadius,
//         borderSide: const BorderSide(color: AppColors.grey30),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: borderRadius,
//         borderSide: const BorderSide(color: AppColors.grey70),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: borderRadius,
//         borderSide: const BorderSide(color: AppColors.kcPrimaryColor),
//       ),
//       errorBorder: OutlineInputBorder(
//         borderRadius: borderRadius,
//         borderSide: const BorderSide(color: AppColors.red110),
//       ),
//     );
//   }

//   static ThemeData calendarTheme = ThemeData.light().copyWith(
//     primaryColor: AppColors.kcPrimaryColor,
//     colorScheme: const ColorScheme.light(primary: AppColors.purple110),
//     buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//     appBarTheme:
//         AppBarTheme(elevation: 20, shadowColor: Colors.black.withOpacity(0.5)),
//   );

//   static TimePickerThemeData timePickerTheme() {
//     return TimePickerThemeData(
//         backgroundColor: AppColors.blue10,
//         hourMinuteTextColor: AppColors.kcPrimaryColor,
//         helpTextStyle:
//             textTheme().bodySmall?.copyWith(color: AppColors.kcPrimaryColor));
//   }
// }
