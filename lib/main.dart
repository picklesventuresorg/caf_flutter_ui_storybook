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
    return Widgetbook.material(
      addons: [
        DeviceFrameAddon(
          initialDevice: Devices.ios.iPhone13,
          devices: [
            Devices.ios.iPhone13,
            Devices.ios.iPad,
            Devices.android.mediumTablet,
            Devices.android.bigPhone,
            Devices.android.smallPhone,
            Devices.android.mediumPhone
          ],
        ),
      ],
      appBuilder: (context, child) {
        return AppResponsive(
          themeData: ThemeStyle.theme(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Material(child: child),
          ),
        );
      },
      // Use the generated directories variable
      directories: directories,
    );
  }
}
