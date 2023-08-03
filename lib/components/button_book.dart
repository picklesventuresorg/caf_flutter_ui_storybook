import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:caf_flutter_ui_storybook/helpers/helper.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Default Style',
  type: AppButton,
)
Widget defaultAppButton(BuildContext context) {
  return SafeAreaWrapper(
    child: AppButton(
      isExpand: context.knobs.boolean(label: 'isExpand'),
      isEnable: context.knobs.boolean(label: 'isEnable'),
      type: AppButtonType.filled,
      key: const Key("default_button"),
      label: "Filled Button",
      onClick: () {},
    ),
  );
}

@widgetbook.UseCase(
  name: 'Top Corner Button Style',
  type: AppButton,
)
Widget defaultTopCornerButton(BuildContext context) {
  return SafeAreaWrapper(
    child: AppButton(
      isExpand: context.knobs.boolean(label: 'isExpand'),
      isEnable: context.knobs.boolean(label: 'isEnable'),
      type: AppButtonType.filled,
      key: const Key("default_top_corner_button"),
      label: "Filled Top Corner Button",
      border: RoundedRectangleBorder(
          borderRadius: AppRadius.only(
              topLeft: AppRadiusSize.regular, topRight: AppRadiusSize.regular)),
      onClick: () {},
    ),
  );
}

@widgetbook.UseCase(
  name: 'Outline Button',
  type: AppButton,
)
Widget outlineButton(BuildContext context) {
  return SafeAreaWrapper(
    child: AppButton(
      isExpand: context.knobs.boolean(label: 'isExpand'),
      isEnable: context.knobs.boolean(label: 'isEnable'),
      type: AppButtonType.outline,
      key: const Key("outline_button"),
      label: "Outline Button",
      onClick: () {},
    ),
  );
}

@widgetbook.UseCase(
  name: 'Outline Stadium Button',
  type: AppButton,
)
Widget outlineStadiumButton(BuildContext context) {
  return SafeAreaWrapper(
    child: AppButton(
      isExpand: context.knobs.boolean(label: 'isExpand'),
      isEnable: context.knobs.boolean(label: 'isEnable'),
      type: AppButtonType.outline,
      key: const Key("outline_stadium_button"),
      label: "Outline Stadium Button",
      border: const StadiumBorder(),
      onClick: () {},
    ),
  );
}

@widgetbook.UseCase(
  name: 'Text Button',
  type: AppButton,
)
Widget textButton(BuildContext context) {
  return SafeAreaWrapper(
    child: AppButton(
      type: AppButtonType.text,
      key: const Key("text_button"),
      label: "Text Button",
      onClick: () {},
    ),
  );
}

@widgetbook.UseCase(
  name: 'Icon with label Button',
  type: AppButton,
)
Widget iconButton(BuildContext context) {
  return SafeAreaWrapper(
    child: AppButton(
        key: const Key("button_left"),
        isExpand: context.knobs.boolean(label: 'isExpand'),
        isEnable: context.knobs.boolean(label: 'isEnable'),
        label: "Button Icons",
        type: AppButtonType.filled,
        onClick: () {},
        leadingIcon: const Icon(
          Icons.chevron_left,
          color: AppColors.white,
        )),
  );
}
