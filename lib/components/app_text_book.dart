import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:caf_flutter_ui_storybook/helpers/helper.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Body Regular Text', type: AppText)
Widget bodyRegular(BuildContext context) {
  return SafeAreaWrapper(
    child: AppText.bodyRegular(
      'TEXT',
      color: context.knobs
          .color(label: 'Text color', initialValue: AppColors.black),
    ),
  );
}

@widgetbook.UseCase(name: 'Body Bold Text', type: AppText)
Widget bodyBold(BuildContext context) {
  return SafeAreaWrapper(
    child: AppText.bodyBold(
      'TEXT',
      color: context.knobs
          .color(label: 'Text color', initialValue: AppColors.black),
    ),
  );
}

@widgetbook.UseCase(name: 'Body Light Text', type: AppText)
Widget bodyLight(BuildContext context) {
  return SafeAreaWrapper(
    child: AppText.bodyLight(
      'TEXT',
      color: context.knobs
          .color(label: 'Text color', initialValue: AppColors.black),
    ),
  );
}

@widgetbook.UseCase(name: 'Title large Text', type: AppText)
Widget titleLarge(BuildContext context) {
  return SafeAreaWrapper(
    child: AppText.titleLarge(
      'TEXT',
      color: context.knobs
          .color(label: 'Text color', initialValue: AppColors.black),
    ),
  );
}

@widgetbook.UseCase(name: 'Body medium Text', type: AppText)
Widget titleMedium(BuildContext context) {
  return SafeAreaWrapper(
    child: AppText.titleMedium(
      'TEXT',
      color: context.knobs
          .color(label: 'Text color', initialValue: AppColors.black),
    ),
  );
}

@widgetbook.UseCase(name: 'button Text', type: AppText)
Widget button(BuildContext context) {
  return SafeAreaWrapper(
    child: AppText.button(
      'TEXT',
      color: context.knobs
          .color(label: 'Text color', initialValue: AppColors.black),
    ),
  );
}

@widgetbook.UseCase(name: 'caption Text', type: AppText)
Widget caption(BuildContext context) {
  return SafeAreaWrapper(
    child: AppText.caption(
      'TEXT',
      color: context.knobs
          .color(label: 'Text color', initialValue: AppColors.black),
    ),
  );
}
