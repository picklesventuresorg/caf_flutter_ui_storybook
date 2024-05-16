import 'package:caf_flutter_ui/core/theme/app_theme_data.dart';
import 'package:caf_flutter_ui/core/theme/color/app_dark_color.dart';
import 'package:caf_flutter_ui/core/theme/color/app_light_color.dart';
import 'package:caf_flutter_ui/utils/extensions.dart';
import 'package:caf_flutter_ui_storybook/helpers/AppThemeAddon.dart';
import 'package:caf_flutter_ui_storybook/helpers/device_frame_clone.dart';
import 'package:caf_flutter_ui_storybook/main.directories.g.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/core/app_responsive.dart';
import 'package:caf_flutter_ui_storybook/theme_style.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

void main() {
  runApp(const CafStoryBook());
}

@widgetbook.App()
class CafStoryBook extends StatelessWidget {
  const CafStoryBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeAddon = ThemeAddon<AppThemeData>(
        initialTheme: WidgetbookTheme(
            name: 'Light',
            data: AppThemeData.regular().withColors(AppLightColor())),
        themes: [
          WidgetbookTheme(
              name: 'Light',
              data: AppThemeData.regular().withColors(AppLightColor())),
          WidgetbookTheme(
              name: 'Dark',
              data: AppThemeData.regular().withColors(AppDarkColor()))
        ],
        themeBuilder: (context, AppThemeData theme, child) {
          return AppTheme(
            data: theme,
            child: child,
          );
        });
    return Widgetbook(
      addons: [
        themeAddon,

        DeviceFrameAddonClone(
          devices: [
            Devices.ios.iPhone13,
            Devices.ios.iPad,
            Devices.android.mediumTablet,
            Devices.android.bigPhone,
            Devices.android.smallPhone,
            Devices.android.mediumPhone
          ],
        ),

        // MaterialThemeAddon(themes: [
        //   WidgetbookTheme(
        //       name: 'Light',
        //       data:
        //           AppThemeData.regular().withColors(AppLightColor()).themeData
        //           .copyWith(scaffoldBackgroundColor: Colors.white)
        //           ),
        //   WidgetbookTheme(
        //       name: 'Dark',
        //       data: AppThemeData.regular().withColors(AppDarkColor()).themeData
        //       .copyWith(scaffoldBackgroundColor: Colors.black)
        //       )
        // ]),

        // DeviceFrameAddon(
        //   initialDevice: Devices.ios.iPhone13,
        //   devices: [
        //     Devices.ios.iPhone13,
        //     Devices.ios.iPad,
        //     Devices.android.mediumTablet,
        //     Devices.android.bigPhone,
        //     Devices.android.smallPhone,
        //     Devices.android.mediumPhone
        //   ],
        // ),
        // MaterialThemeAddon(
        //   themes: [
        //     WidgetbookTheme(name: 'Light', data: ThemeData.light()),
        //     WidgetbookTheme(name: 'Dark', data: ThemeData.dark())
        //   ],
        // ),
        // themeAddon,

        // MaterialThemeAddon(themes: [
        //   WidgetbookTheme(
        //       name: 'Light',
        //       data: AppThemeData.regular()
        //           .withColors(AppLightColor())
        //           .themeData
        //           ),
        //   WidgetbookTheme(
        //       name: 'Dark',
        //       data: AppThemeData.regular()
        //           .withColors(AppDarkColor())
        //           .themeData
        //           )
        // ]),
        // AppThemeAddon(),
      ],
      directories: directories,
      appBuilder: (context, child) => child,
      // appBuilder: (context, child) {
      //   return Builder(builder: (ctx) {
      //     // print('setting: ${WidgetbookState.of(ctx).addons![1].fields[0].toFullJson()}');
      //     /// Output ->  path=custom_widget%2Fappbadge%2Fdefault-appbadge&theme=%7Bname%3ADark%7D
      //     // print('setting: ${WidgetbookState.of(ctx).uri}');

      //     print(
      //         'setting: ${WidgetbookState.of(ctx).queryParams['theme'] == '{name:Dark}'}');

      //     return AppResponsive(
      //         themeData:
      //             WidgetbookState.of(ctx).queryParams['theme'] == '{name:Dark}'
      //                 ? AppThemeData.regular()
      //                     .withColors(AppDarkColor())
      //                     .themeData
      //                 : AppThemeData.regular()
      //                     .withColors(AppLightColor())
      //                     .themeData,
      //         colorMode:
      //             WidgetbookState.of(ctx).queryParams['theme'] == '{name:Dark}'
      //                 ? AppThemeColorMode.dark
      //                 : AppThemeColorMode.light,
      //         child: Builder(builder: (ctx2) {
      //           return MaterialApp(
      //             theme: WidgetbookState.of(ctx2).queryParams['theme'] ==
      //                     '{name:Dark}'
      //                 ? AppThemeData.regular()
      //                     .withColors(AppDarkColor())
      //                     .themeData
      //                 : AppThemeData.regular()
      //                     .withColors(AppLightColor())
      //                     .themeData,
      //             debugShowCheckedModeBanner: false,
      //            home: Material(child: child,),
      //           );
      //         }
      //             // child: MaterialApp(
      //             //   debugShowCheckedModeBanner: false,
      //             //   home: Scaffold(body: Material(child: child)),
      //             // ),
      //             ));
      //   });
      // },
    );

    // AppThem   eAddon(    ),
    // ThemeAddon<AppThemeData>(
    //     themes: [
    //       WidgetbookTheme(
    //           name: 'Light',
    //           data: AppThemeData.regular().withColors(AppLightColor())),
    //       WidgetbookTheme(
    //           name: 'Dark',
    //           data: AppThemeData.regular().withColors(AppDarkColor()))
    //     ],
    //     themeBuilder: (context, theme, child) {
    //       return AppTheme(
    //         data: theme,
    //         child: child,
    //       );
    //     }),
    // BuilderAddon(

    //     name: 'AppResponsive',
    //     builder: (context, child) {
    //        print('themeBuilder2 fwef');
    //       return AppResponsive(
    //         colorMode: AppThemeColorMode.light,
    //         child: child,
    //       );
    //     }),,
    //  ],
    //   a
    //   ppBuilder: (context, child) {
    //     return AppResponsive(
    //       child: MaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         home: Material(child: child),
    //       ),
    //     );
    //   // },Use the generated directories variable
    //   directories: directories,
    // );
  }
}
