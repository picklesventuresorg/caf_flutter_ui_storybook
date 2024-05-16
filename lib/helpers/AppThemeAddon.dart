import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/core/app_responsive.dart';
import 'package:caf_flutter_ui/core/theme/app_theme_data.dart';
import 'package:caf_flutter_ui/core/theme/app_theme_style.dart';
import 'package:caf_flutter_ui/core/theme/color/app_dark_color.dart';
import 'package:caf_flutter_ui/core/theme/color/app_light_color.dart';
import 'package:caf_flutter_ui_storybook/helpers/custom_model.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

class AppThemeAddon extends WidgetbookAddon<CustomModel> {
  final initialModel = CustomModel.regular();

  AppThemeAddon() : super(name: 'AppThemeAddon');

  @override
  List<Field> get fields {
    return [
      ListField<CustomModel>(
          name: 'AppThemeAddon',
          values: [
            CustomModel.regular(),
            CustomModel(
                colorMode: AppThemeColorMode.dark,
                themeData:
                    AppThemeData.regular().withColors(AppDarkColor()).themeData,
                label: 'Dark')
          ],
          initialValue: initialModel)
    ];
  }

  @override
  CustomModel valueFromQueryGroup(Map<String, String> group) {
    return valueOf<CustomModel>('AppThemeAddon', group)!;
  }

  @override
  Widget buildUseCase(BuildContext context, Widget child, CustomModel setting) {
    return AppResponsive(
      // data: AppThemeData.regular().withColors(
      //     setting.colorMode == AppThemeColorMode.light
      //         ? AppLightColor()
      //         : AppDarkColor()),
      colorMode: setting.colorMode,
      themeData: setting.themeData,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Material(child: child)),
      ),
    );
    //if (setting.colorMode == AppThemeColorMode.light) {
    //   return AppTheme(
    //       data: AppThemeData.regular().withColors(AppLightColor()),
    //       child: child);
    // } else {
    //   return AppTheme(
    //       data: AppThemeData.regular().withColors(AppDarkColor()),
    //       child: child);
    // }
  }
}

// class AppThemeAddon extends WidgetbookAddon<AppThemeColorMode> {
//   AppThemeAddon({
//     AppThemeColorMode initialValue = AppThemeColorMode.light,
//   }) : super(name: 'AppThemeColorMode');

//   @override
//   Widget buildUseCase(
//       BuildContext context, Widget child, AppThemeColorMode setting) {
//         print('setting: $setting');
//     if (setting == AppThemeColorMode.light) {
//       return AppTheme(data: AppThemeData.regular().withColors(AppLightColor()), child: child);
//       //   return AppResponsive(
//       //   colorMode: AppThemeColorMode.light,
//       //   child: MaterialApp(
//       //     home: Material(
//       //       child: child,
//       //     )),
//       // );
//     } else {
//             return AppTheme(data: AppThemeData.regular().withColors(AppDarkColor()), child: child);

//       // return AppResponsive(
//       //   colorMode: AppThemeColorMode.dark,
//       //   child: MaterialApp(
//       //     home: Material(
//       //       child: child,
//       //     )),
//       // );
//     }
//   }

//   @override
//   List<Field<AppThemeColorMode>> get fields {
//     return [
//       ListField<AppThemeColorMode>(
//           name: 'AppThemeColorMode',
//           values: [
//             AppThemeColorMode.light,
//             AppThemeColorMode.dark,

//             // CustomModel(
//             //     colorMode: AppThemeColorMode.dark,
//             //     themeData:
//             //         AppThemeData.regular().withColors(AppDarkColor()).themeData)
//           ],
//           initialValue: AppThemeColorMode.light)
//     ];
//   }

//   @override
//   AppThemeColorMode valueFromQueryGroup(Map<String, String> group) {
//     return valueOf<AppThemeColorMode>('AppThemeColorMode', group)!;
//   }
// }
