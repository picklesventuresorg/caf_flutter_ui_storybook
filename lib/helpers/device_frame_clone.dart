// A [WidgetbookAddon] for changing the active device/frame. It's based on
import 'package:caf_flutter_ui/core/app_responsive.dart';
import 'package:caf_flutter_ui/core/app_typography_data.dart';
import 'package:caf_flutter_ui/core/theme/app_theme.dart';
import 'package:caf_flutter_ui/core/theme/app_theme_data.dart';
import 'package:caf_flutter_ui/core/theme/app_theme_style.dart';
import 'package:caf_flutter_ui/core/theme/color/app_dark_color.dart';
import 'package:caf_flutter_ui/core/theme/color/app_light_color.dart';
import 'package:caf_flutter_ui/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

/// the [`device_frame`](https://pub.dev/packages/device_frame) package.
class DeviceFrameAddonClone extends WidgetbookAddon<DeviceFrameSetting> {
  DeviceFrameAddonClone({
    required List<DeviceInfo> devices,
    this.initialDevice = NoneDevice.instance,
  })  : assert(
          devices.isNotEmpty,
          'devices cannot be empty',
        ),
        assert(
          initialDevice == NoneDevice.instance ||
              devices.contains(initialDevice),
          'initialDevice must be in devices',
        ),
        this.devices = [NoneDevice.instance, ...devices],
        super(
          name: 'Device',
        );

  final DeviceInfo initialDevice;
  final List<DeviceInfo> devices;

  @override
  List<Field> get fields {
    return [
      ListField<DeviceInfo>(
        name: 'name',
        values: devices,
        initialValue: initialDevice,
        labelBuilder: (device) => device.name,
      ),
      ListField<Orientation>(
        name: 'orientation',
        values: Orientation.values,
        initialValue: Orientation.portrait,
        labelBuilder: (orientation) =>
            orientation.name.substring(0, 1).toUpperCase() +
            orientation.name.substring(1),
      ),
      ListField<bool>(
        name: 'frame',
        values: [false, true],
        initialValue: true,
        labelBuilder: (hasFrame) => hasFrame ? 'Device Frame' : 'None',
      ),
    ];
  }

  @override
  DeviceFrameSetting valueFromQueryGroup(Map<String, String> group) {
    return DeviceFrameSetting(
      device: valueOf('name', group)!,
      orientation: valueOf('orientation', group)!,
      hasFrame: valueOf('frame', group)!,
    );
  }

  @override
  Widget buildUseCase(
    BuildContext context,
    Widget child,
    DeviceFrameSetting setting,
  ) {
    if (setting.device is NoneDevice) {
      return child;
    }

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Center(
        child: DeviceFrame(
          orientation: setting.orientation,
          device: setting.device,
          isFrameVisible: setting.hasFrame,
          screen: setting.hasFrame
              ? Builder(builder: (context) {
                  final isOnDarkMode =
                      WidgetbookState.of(context).queryParams['theme'] ==
                          '{name:Dark}';

                  final activeThemeData = AppThemeData.regular()
                      .withTheme(isOnDarkMode
                          ? AppThemeStyle.darkTheme(
                              AppDarkColor(),  AppTypographyData.regular())
                          : AppThemeStyle.lightTheme(
                            AppLightColor(),  AppTypographyData.regular()))
                      .themeData;
                  // theme: isOnDarkMode
                  print(
                      'DeviceFrame: ${activeThemeData} -- $isOnDarkMode');
                  return AppResponsive(
                    themeData: activeThemeData,
                    // themeData: isOnDarkMode
                    //     ? AppThemeData.regular()
                    //         .withColors(AppDarkColor())
                    //         .themeData
                    //     : AppThemeData.regular()
                    //         .withColors(AppLightColor())
                    //         .themeData,
                    colorMode: isOnDarkMode
                        ? AppThemeColorMode.dark
                        : AppThemeColorMode.light,
                    child: Builder(builder: (context) {
                      return MaterialApp(
                        debugShowCheckedModeBanner: false,
                        theme: activeThemeData,
                        // theme: isOnDarkMode
                        //     ? AppThemeData.regular()
                        //         .withColors(AppDarkColor())
                        //         .themeData
                        //     : AppThemeData.regular()
                        //         .withColors(AppLightColor())
                        //         .themeData,
                        home: Scaffold(
                          backgroundColor: isOnDarkMode
                              ? AppDarkColor().background
                              : AppLightColor().background,
                          body: child,
                        ),
                      );
                    }),
                  );
                })
              : SafeArea(
                  child: child,
                ),
        ),
      ),
    );
  }
}
