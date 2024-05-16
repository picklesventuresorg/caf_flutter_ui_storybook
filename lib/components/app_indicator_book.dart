import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:caf_flutter_ui_storybook/helpers/helper.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Linear AppIndicator', type: AppIndicator)
Widget linearAppIndicator(BuildContext context) {
  return SafeAreaWrapper(
    child: AppIndicator(
      type: AppIndicatorType.linear,
      backgroundColor: context.knobs
          .color(label: 'BackgroundColor', initialValue: AppColors.grey40),

      /// TODO: Fix backgroundColor

      // progressColor: context.knobs.color(
      //     label: 'Progress Color', initialValue: AppColors.kcPrimaryColor),
    ),
  );
}

@widgetbook.UseCase(name: 'Circular AppIndicator', type: AppIndicator)
Widget circularAppIndicator(BuildContext context) {
  return SafeAreaWrapper(
    child: AppIndicator(
      type: AppIndicatorType.circular,

      /// TODO: Fix backgroundColor

      // progressColor: context.knobs.color(
      //     label: 'Progress Color', initialValue: AppColors.kcPrimaryColor),
    ),
  );
}
