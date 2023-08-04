import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

final List<String> _data = ["Apple", "Google", "Xiomi", "HTC"];
final List<ChipModel> _inputData = [
  ChipModel(label: 'Input A', isSelect: false),
  ChipModel(label: 'Input B', isSelect: false),
  ChipModel(label: 'Input C', isSelect: false),
];

@widgetbook.UseCase(name: 'FilterChip', type: AppChips)
AppChips filterChip(BuildContext context) {
  return AppChips(
    type: AppChipType.filter,
    chipList: _data,
    onFilterChanged: (value) {},
    isSelectable: context.knobs.boolean(label: 'Is selectable'),
    selectedLabelColor: context.knobs
        .color(label: 'Selected Label color', initialValue: AppColors.white),
    selectedBgColor: context.knobs.color(
        label: 'Selected Background color', initialValue: AppColors.lime),
  );
}

@widgetbook.UseCase(name: 'ActionChip', type: AppChips)
AppChips actionChip(BuildContext context) {
  return AppChips(
    type: AppChipType.action,
    avatar: const CircleAvatar(
        backgroundColor: AppColors.yellow100, child: Icon(Icons.star_rounded)),
    chipList: _data,
    onSelected: (val) {},
  );
}

@widgetbook.UseCase(name: 'Input Chip', type: AppChips)
AppChips inputChip(BuildContext context) {
  return AppChips(
    type: AppChipType.input,
    inputList: _inputData,
    isSelectable: context.knobs.boolean(label: 'Is selectable'),
    onSelected: (_){},
    onDeleted: (_) {},
  );
}

@widgetbook.UseCase(name: 'Choice Chip', type: AppChips)
AppChips choiceChips(BuildContext context) {
  return AppChips(
    selectedIndex: 2,
    selectedLabelColor: context.knobs
        .color(label: 'Selected Label color', initialValue: AppColors.white),
    selectedBgColor: context.knobs.color(
        label: 'Selected Background color', initialValue: AppColors.lime),
    avatar: const CircleAvatar(
        backgroundColor: AppColors.yellow100,
        child: AppText.bodyRegular(
          "D",
          color: AppColors.white,
        )),
    labelColor: context.knobs
        .color(label: 'Label color', initialValue: AppColors.black),
    borderColor: context.knobs
        .color(label: 'Border color', initialValue: AppColors.red100),
    selectBorderColor: context.knobs
        .color(label: 'Selected border color', initialValue: AppColors.black),
    type: AppChipType.choice,
    chipList: _data,
    onSelected: (value) {},
  );
}
