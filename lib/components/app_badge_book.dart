import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:caf_flutter_ui/const/app_dimens.dart';
import '/helpers/helper.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default AppBadge', type: AppBadge)
Widget defaultAppBadge(BuildContext context) {
  return SafeAreaWrapper(
      child: AppBadge(
    label: 'Default',
    borderRadius: context.knobs.double.slider(
        label: 'Border Radius',
        initialValue: AppDimens.badgeRadius,
        max: 80,
        min: 0,
        divisions: 79),
    borderColor: context.knobs
        .color(label: 'Border color', initialValue: AppColors.transparent),
    backgroundColor: context.knobs
        .color(label: 'Background color', initialValue: AppColors.white),
    textColor: context.knobs
        .color(label: 'Text color', initialValue: AppColors.kcPrimaryColor),
  ));
}

@widgetbook.UseCase(name: 'Disable AppBadge', type: AppBadge)
Widget disableAppBadge(BuildContext context) {
  return SafeAreaWrapper(
    child: AppBadge.disable(
      label: 'Disable',
      borderRadius: context.knobs.double.slider(
          label: 'Border Radius',
          initialValue: AppDimens.badgeRadius,
          max: 80,
          min: 0,
          divisions: 79),
    ),
  );
}
