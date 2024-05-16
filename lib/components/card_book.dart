import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:caf_flutter_ui_storybook/helpers/helper.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default Cardview', type: AppCard)
Widget defaultCardView(BuildContext context) {
  return SafeAreaWrapper(
    child: AppCard(
      contentPadding: const AppPaddingData.big(),
      backgroundColor: context.knobs
          .color(label: 'Background Color', initialValue: AppColors.teal100),
      elevation: context.knobs.double.slider(
          label: 'Elevation',
          max: 100,
          initialValue: 24,
          min: 0,
          divisions: 100.toInt()),
      width: context.knobs.double.slider(
          label: 'Size',
          max: 500,
          min: 20,
          initialValue: 100,
          divisions: 480.toInt()),
      height: context.knobs.double.slider(
          label: 'Size',
          max: 500,
          min: 20,
          initialValue: 100,
          divisions: 480.toInt()),
      child: const Text(
        'Default CardView',
        textAlign: TextAlign.center,
      ),
    ),
  );
}

@widgetbook.UseCase(name: 'outline cardview', type: AppCard)
Widget outlineCardView(BuildContext context) {
  return SafeAreaWrapper(
    child: AppCard(
      
      contentPadding: const AppPaddingData.big(),
      elevation: context.knobs.double.slider(
          label: 'Elevation',
          max: 100,
          initialValue: 0,
          min: 0,
          divisions: 100.toInt()),
          /// TODO: Fix borderColor
      //borderSide: const BorderSide(color: AppColors.kcAccentColor, width: 2),
      child: const Text('Default App Card'),
    ),
  );
}

@widgetbook.UseCase(name: 'BeveledRectangleBorder cardview', type: AppCard)
AppCard sharpCornerCardView(BuildContext context) {
  return AppCard.sharpCorner(
    contentPadding: const AppPaddingData.big(),
    backgroundColor: context.knobs
        .color(label: 'Background Color', initialValue: AppColors.teal100),
    elevation: context.knobs.double.slider(
        label: 'Elevation',
        max: 100,
        initialValue: 0,
        min: 0,
        divisions: 100.toInt()),
    child: const Text('Default App Card'),
  );
}
