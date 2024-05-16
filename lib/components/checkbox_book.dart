import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:caf_flutter_ui_storybook/helpers/helper.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default Checkbox', type: AppCheckBox)
Widget defaultCheckBox(BuildContext context) {
  return SafeAreaWrapper(
      child: AppCheckBox(label: "Default", value: false, onChanged: (val) {}));
}

@widgetbook.UseCase(name: 'Selected Checkbox', type: AppCheckBox)
Widget selectionCheckBox(BuildContext context) {
  return SafeAreaWrapper(
    child: AppCheckBox(
        label: "Select",
        value: context.knobs.boolean(label: 'select', initialValue: true),
        onChanged: (val) {}),
  );
}

@widgetbook.UseCase(name: 'Disable/Enable Checkbox', type: AppCheckBox)
Widget disabilityCheckBox(BuildContext context) {
  return SafeAreaWrapper(
    child: AppCheckBox(
        label: "Disable",
        value: true,
        isDisable: context.knobs.boolean(label: 'disable', initialValue: true),
        onChanged: (val) {}),
  );
}

@widgetbook.UseCase(name: 'Checkbox Colors', type: AppCheckBox)
Widget checkboxColor(BuildContext context) {
  return SafeAreaWrapper(
    child: AppCheckBox(
        label: "CheckBox",
        isDisable: context.knobs.boolean(label: 'disable', initialValue: true),
        value: context.knobs.boolean(label: 'select', initialValue: true),

        /// TODO : Fix borderColor
        // borderColor: context.knobs.color(
        //     label: 'border color', initialValue: AppColors.kcPrimaryColor),
        uncheckedFillColor: context.knobs.color(
            label: 'UnChecked Fill color', initialValue: AppColors.white),

        /// TODO : Fix borderColor

        // checkedFillColor: context.knobs.color(
        //     label: 'Checked Fillcolor', initialValue: AppColors.kcPrimaryColor),
        checkedIconColor: context.knobs
            .color(label: 'Checked Icon color', initialValue: AppColors.white),
        uncheckedIconColor: context.knobs.color(
            label: 'UnChecked Icon color', initialValue: AppColors.white),
        onChanged: (val) {}),
  );
}
