import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'iOS style slider', type: AppSlider)
AppSlider iOSSlider(BuildContext context) {
  return AppSlider.ios(
    activeColor: context.knobs
        .color(label: 'Active Color', initialValue: AppColors.kcPrimaryColor),
    inActiveColor: context.knobs
        .color(label: 'InActive Color', initialValue: AppColors.grey70),
    value: 0,
    listener: (value) {},
    onlySlider:
        context.knobs.boolean(label: 'Only slider', initialValue: false),
  );
}

@widgetbook.UseCase(name: 'android style slider', type: AppSlider)
AppSlider androidSlider(BuildContext context) {
  return AppSlider.android(
    activeColor: context.knobs
        .color(label: 'Active Color', initialValue: AppColors.kcPrimaryColor),
    inActiveColor: context.knobs
        .color(label: 'InActive Color', initialValue: AppColors.grey70),
    value: 0,
    listener: (value) {},
    onlySlider:
        context.knobs.boolean(label: 'Only slider', initialValue: false),
  );
}
