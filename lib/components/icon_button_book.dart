import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui_storybook/helpers/helper.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Square Icon Button',
  type: AppIconButton,
)
Widget squareIconButton(BuildContext context) {
  return SafeAreaWrapper(
    child: AppIconButton.filledSquare(
        onTap: () {},
        icon: Icons.add,
        radius: context.knobs.double.slider(
            label: 'Icon radius', min: 0, max: 10, divisions: 10.toInt()),
        iconSize: context.knobs.double.slider(
            label: 'Icon Size', min: 0, max: 100, divisions: 10.toInt())),
  );
}

@widgetbook.UseCase(
  name: 'Circle Icon Button',
  type: AppIconButton,
)
Widget circleIconButton(BuildContext context) {
  return SafeAreaWrapper(
    child: AppIconButton.filledCircle(
        onTap: () {},
        icon: Icons.add,
        iconSize: context.knobs.double.slider(
            label: 'Icon Size', min: 0, max: 100, divisions: 10.toInt())),
  );
}
