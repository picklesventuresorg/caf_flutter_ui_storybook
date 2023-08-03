import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:caf_flutter_ui_storybook/helpers/helper.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widget;

@widget.UseCase(name: 'Default', type: AppIcon)
Widget defaultAppIcon(BuildContext context) {
  return SafeAreaWrapper(
    child: AppIcon(
      icon: Icons.alarm,
      iconSize: context.knobs.double
          .slider(label: 'Icon Size', max: 200, initialValue: 36, min: 36),
      iconColor: context.knobs.color(
          label: 'Icon Color',
          initialValue: AppTheme.of(context).themeData.primaryColor),
    ),
  );
}
