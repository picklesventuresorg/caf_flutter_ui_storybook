import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:caf_flutter_ui_storybook/helpers/helper.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default AppStatus', type: AppStatus)
Widget defaultAppStatus(BuildContext context) {
  return SafeAreaWrapper(
    child: AppStatus(
      'Default',
      radiusBorder: context.knobs.double.slider(
          label: 'Radius', min: 1, max: 24, initialValue: 1, divisions: 23),
      textColor: context.knobs
          .color(label: 'Text Color', initialValue: AppColors.white),

      /// TODO: Fix backgroundColor
      // backgroundColor: context.knobs.color(
      //     label: 'Background Color', initialValue: AppColors.kcPrimaryColor),
      tagSize: context.knobs.list(label: 'Status Size', options: [
        AppStatusSize.small,
        AppStatusSize.regular,
        AppStatusSize.large
      ]),
    ),
  );
}

@widgetbook.UseCase(name: 'Success AppStatus', type: AppStatus)
Widget successAppStatus(BuildContext context) {
  return SafeAreaWrapper(
    child: AppStatus(
      'Success ',
      radiusBorder: context.knobs.double.slider(
          label: 'Radius', min: 1, max: 24, initialValue: 1, divisions: 23),

      /// TODO : Fix backgroundColor
      // backgroundColor: AppColors.green,
      tagSize: context.knobs.list(label: 'Status Size', options: [
        AppStatusSize.small,
        AppStatusSize.regular,
        AppStatusSize.large
      ]),
    ),
  );
}

@widgetbook.UseCase(name: 'Error AppStatus', type: AppStatus)
Widget errorAppStatus(BuildContext context) {
  return SafeAreaWrapper(
    child: AppStatus(
      'Error',
      radiusBorder: context.knobs.double.slider(
          label: 'Error', min: 1, max: 24, initialValue: 1, divisions: 23),
      backgroundColor: AppColors.red110,
      tagSize: context.knobs.list(label: 'Status Size', options: [
        AppStatusSize.small,
        AppStatusSize.regular,
        AppStatusSize.large
      ]),
    ),
  );
}

@widgetbook.UseCase(name: 'Info AppStatus', type: AppStatus)
Widget infoAppStatus(BuildContext context) {
  return SafeAreaWrapper(
    child: AppStatus(
      'Info',
      radiusBorder: context.knobs.double.slider(
          label: 'Radius', min: 1, max: 24, initialValue: 1, divisions: 23),
      backgroundColor: AppColors.yellow100,
      tagSize: context.knobs.list(label: 'Status Size', options: [
        AppStatusSize.small,
        AppStatusSize.regular,
        AppStatusSize.large
      ]),
    ),
  );
}
