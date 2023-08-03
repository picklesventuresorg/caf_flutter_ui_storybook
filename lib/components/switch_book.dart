import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui_storybook/helpers/helper.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(type: AppSwitch, name: 'Default Switch')
Widget defaultSwitch(BuildContext context) {
  return SafeAreaWrapper(
    child: AppSwitch(
        onChanged: (value) {}, value: context.knobs.boolean(label: 'Value')),
  );
}

@widgetbook.UseCase(type: AppSwitch, name: 'iOS Switch')
Widget iOSSwitch(BuildContext context) {
  return SafeAreaWrapper(
    child: AppSwitch(
      onChanged: (value) {},
      value: context.knobs.boolean(label: 'Value'),
      type: AppSwitchType.ios,
    ),
  );
}
