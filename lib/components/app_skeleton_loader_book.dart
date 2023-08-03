import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: "Default", type: AppSkeletonLoader)
AppSkeletonLoader defaultLoader(BuildContext context) {
  return AppSkeletonLoader(
      child: ListView.builder(
          physics: null,
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return _buildItem();
          }));
}

Widget _buildItem() {
  return AspectRatio(
      aspectRatio: 16 / 4,
      child: AppPadding.regular(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ));
}
