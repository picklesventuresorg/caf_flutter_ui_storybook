import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:caf_flutter_ui_storybook/helpers/helper.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

TextEditingController defaultText = TextEditingController();

@widgetbook.UseCase(type: AppTextForm, name: 'Default AppTextForm')
Widget defaultAppTextForm(BuildContext context) {
  return SafeAreaWrapper(
    child: SizedBox(
      width: const Size.fromWidth(300).width,
      child: AppTextForm(
          floatingLabelBehavior:
              context.knobs.list(label: 'Floating label behaviour', options: [
            FloatingLabelBehavior.always,
            FloatingLabelBehavior.auto,
            FloatingLabelBehavior.never
          ]),
          hintText: "Default",
          key: const Key("default_text_form"),
          maxLines: 1,
          controller: defaultText),
    ),
  );
}

@widgetbook.UseCase(type: AppTextForm, name: 'Default Float AppTextForm')
Widget defaultFloatAppTextForm(BuildContext context) {
  return SafeAreaWrapper(
    // padding: const AppPaddingData.only(
    //     top: AppGapSize.regular, left: AppGapSize.regular),
    child: SizedBox(
      width: const Size.fromWidth(300).width,
      child: AppTextForm(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Default",
          action: InkWell(child: const Text("change"), onTap: () {}),
          key: const Key("default_text_form_float"),
          controller: defaultText),
    ),
  );
}

@widgetbook.UseCase(type: AppTextForm, name: 'Default Float Text')
Widget viewPreDefinedValue(BuildContext context) {
  TextEditingController defaultController = TextEditingController();
  defaultController.text = "Lorem ipsum dimsum";

  return SafeAreaWrapper(
    // padding: const AppPaddingData.only(
    //     top: AppGapSize.regular, left: AppGapSize.regular),
    child: SizedBox(
      width: const Size.fromWidth(300).width,
      child: AppTextForm(
          hintText: "Predefined Value",
          key: const Key("pre_defined_value"),
          controller: defaultController),
    ),
  );
}

@widgetbook.UseCase(type: AppTextForm, name: 'Suffix Icon Text')
Widget viewSuffixIcon(BuildContext context) {
  return SafeAreaWrapper(
    // padding: const AppPaddingData.only(
    //     top: AppGapSize.regular, left: AppGapSize.regular),
    child: SizedBox(
      width: const Size.fromWidth(300).width,
      child: const AppTextForm(
          hintText: "Suffix Icon",
          key: Key("suffix_icon"),
          suffix: Text("Suffix"),
          suffixIcon: Icon(
            Icons.arrow_drop_down_rounded,
            size: 26,
          )),
    ),
  );
}

@widgetbook.UseCase(type: AppTextForm, name: 'Prefix Icon Text')
Widget prefixIconText(BuildContext context) {
  return SafeAreaWrapper(
    // padding: const AppPaddingData.only(
    //     top: AppGapSize.regular, left: AppGapSize.regular),
    child: SizedBox(
      width: const Size.fromWidth(300).width,
      child: const AppTextForm(
          hintText: "Prefix Icon",
          key: Key("prefix_icon"),
          prefix: Text("Prefix"),
          prefixIcon: Icon(
            Icons.attach_money_rounded,
            size: 26,
          )),
    ),
  );
}

@widgetbook.UseCase(type: AppTextForm, name: 'Sufix/Prefix Icon Text')
Widget sufixPrefixIconText(BuildContext context) {
  return SafeAreaWrapper(
    // padding: const AppPaddingData.only(
    //     top: AppGapSize.regular, left: AppGapSize.regular),
    child: SizedBox(
      width: const Size.fromWidth(300).width,
      child: const AppTextForm(
          hintText: "With Icons",
          key: Key("with_icons"),
          prefixIcon: Icon(
            Icons.attach_money_rounded,
            size: 26,
          ),
          suffixIcon: Icon(
            Icons.attach_money_rounded,
            size: 26,
          )),
    ),
  );
}

@widgetbook.UseCase(type: AppTextForm, name: 'ReadyOnly TextForm')
Widget readOnlyTextForm(BuildContext context) {
  TextEditingController defaultController = TextEditingController();
  defaultController.text = "Lorem ipsum dimsum";

  return SafeAreaWrapper(
    // padding: const AppPaddingData.only(
    //     top: AppGapSize.regular, left: AppGapSize.regular),
    child: SizedBox(
      width: const Size.fromWidth(300).width,
      child: AppTextForm(
          isReadOnly: true,
          hintText: "Predefined Value Disabled",
          key: const Key("pre_defined_value_disabled"),
          backgroundColor: AppColors.transparent,
          controller: defaultController),
    ),
  );
}

@widgetbook.UseCase(type: AppTextForm, name: 'Placeholder TextForm')
Widget placeholderTextForm(BuildContext context) {
  TextEditingController defaultController = TextEditingController();
  defaultController.text = "Lorem ipsum dimsum";

  return SafeAreaWrapper(
    // padding: const AppPaddingData.only(
    //     top: AppGapSize.regular, left: AppGapSize.regular),
    child: SizedBox(
      width: const Size.fromWidth(300).width,
      child: AppTextForm(
          hintText: "Placeholder Value",
          key: const Key("placeholder_value"),
          suffixIcon: const Icon(
            Icons.attach_money_rounded,
            size: 26,
          ),
          initialValue: "00.00",
          controller: defaultController),
    ),
  );
}

@widgetbook.UseCase(type: AppTextForm, name: 'ReadyOnly Suffix TextForm')
Widget readOnlySuffixTextForm(BuildContext context) {
  TextEditingController defaultController = TextEditingController();
  defaultController.text = "Lorem ipsum dimsum";

  return SafeAreaWrapper(
    // padding: const AppPaddingData.only(
    //     top: AppGapSize.regular, left: AppGapSize.regular),
    child: SizedBox(
        width: const Size.fromWidth(300).width,
        child: AppTextForm(
            isReadOnly: true,
            hintText: "Predefined Value Suffix Disabled",
            key: const Key("pre_defined_value_suffix_disabled"),
            suffixIcon: const Icon(
              Icons.info_rounded,
              size: 26,
            ),
            backgroundColor: AppColors.transparent,
            controller: defaultController)),
  );
}

@widgetbook.UseCase(type: AppTextForm, name: 'ReadyOnly Prefix TextForm')
Widget readOnlyPrefixTextForm(BuildContext context) {
  TextEditingController defaultController = TextEditingController();
  defaultController.text = "Lorem ipsum dimsum";

  return SafeAreaWrapper(
    // padding: const AppPaddingData.only(
    //     top: AppGapSize.regular, left: AppGapSize.regular),
    child: SizedBox(
      width: const Size.fromWidth(300).width,
      child: AppTextForm(
          isReadOnly: true,
          hintText: "Predefined Value Prefix Disabled",
          key: const Key("pre_defined_value_prefix_disabled"),
          prefixIcon: const Icon(
            Icons.attach_money_rounded,
            size: 26,
          ),
          backgroundColor: AppColors.transparent,
          controller: defaultController),
    ),
  );
}

@widgetbook.UseCase(type: AppTextForm, name: 'RTL Prefix TextForm')
Widget rtlTextForm(BuildContext context) {
  TextEditingController defaultController = TextEditingController();

  return SafeAreaWrapper(
    // padding: const AppPaddingData.only(
    //     top: AppGapSize.regular, left: AppGapSize.regular),
    child: SizedBox(
      width: const Size.fromWidth(300).width,
      child: AppTextForm(
          hintText: 'Hint Text',
          labelText: "Label Text",
          floatingLabelBehavior: FloatingLabelBehavior.never,
          textDirection: TextDirection.rtl,
          prefixIcon: const Icon(
            Icons.attach_money_rounded,
            size: 26,
          ),
          controller: defaultController),
    ),
  );
}

@widgetbook.UseCase(type: AppTextForm, name: 'ValidationTextForm TextForm')
Widget validationTextForm(BuildContext context) {
  TextEditingController defaultController = TextEditingController();

  return SafeAreaWrapper(
    // padding: const AppPaddingData.only(
    //     top: AppGapSize.regular, left: AppGapSize.regular),
    child: SizedBox(
        width: const Size.fromWidth(500).width,
        child: AppTextForm(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            controller: defaultController,
            hintText: "Hint Text",
            errorMaxLines: 6,
            labelText:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
            key: const Key("validate_value"),
            suffixIcon: const Icon(
              Icons.email_rounded,
              size: 26,
            ),
            autovalidateMode: context.knobs.list(
                label: 'AutoValidation',
                options: [
                  AutovalidateMode.always,
                  AutovalidateMode.onUserInteraction
                ]),
            validators: (value) =>
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")),
  );
}
