import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:caf_flutter_ui_storybook/helpers/helper.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'AppItemList', type: AppItemList)
Widget defaultItemList(BuildContext context) {
  return SafeAreaWrapper(
    child: SizedBox.fromSize(
      size: const Size.fromHeight(75),
      child: AppItemList(
        header: 'Header',
        subTitle: 'SubTitle',
        backgroundColor: context.knobs
            .color(label: 'Background color', initialValue: AppColors.white),
        leading: const Icon(Icons.person_search),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    ),
  );
}
