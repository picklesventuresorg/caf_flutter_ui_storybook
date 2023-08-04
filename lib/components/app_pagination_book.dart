import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:caf_flutter_ui_storybook/helpers/helper.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: "AppPagination", type: AppPagination)
Widget defaultPagination(BuildContext context) {
  return SafeAreaWrapper(
    child: AppPagination(
      contentBgColor: context.knobs.color(
          label: 'Content Background color', initialValue: Colors.transparent),
      containerBorderColor: context.knobs
          .color(label: 'border color', initialValue: AppColors.blue100),
      textColor: context.knobs
          .color(label: 'Text color', initialValue: AppColors.black),
      showPageSizeSelector:
          context.knobs.boolean(label: 'Show PageSize Selector'),
      onPageSizeChange: (value) {},
      onClickNext: (pageNum) {},
      onClickPrevious: (pageNum) {},
      totalPage: context.knobs.double
          .slider(
              label: 'Total Pages',
              initialValue: 1,
              max: 50,
              min: 1,
              divisions: 49.toInt())
          .toInt(),
      initialPageSize:
          context.knobs.list(label: 'Initial Page', options: [10, 20]),
      currentPage: context.knobs.double
          .slider(
              label: 'Current Page',
              initialValue: 1,
              max: 50,
              min: 1,
              divisions: 49.toInt())
          .toInt(),
    ),
  );
}
