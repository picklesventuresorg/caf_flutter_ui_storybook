import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui_storybook/helpers/helper.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: "Default", type: AppRefreshIndicator)
Widget defaultIndicator(BuildContext context) {
  final keyRefresh = GlobalKey<RefreshIndicatorState>();
  RefreshController controller = RefreshController();

  WidgetsBinding.instance.addPostFrameCallback((_) {
    keyRefresh.currentState!.show();
  });

  dispose() {
    controller.dispose();
  }

  return SafeAreaWrapper(
    child: AppRefreshIndicator(
      onRefresh: () async {
        await Future.delayed(const Duration(minutes: 1));
        controller.refreshComplete();
        dispose();
      },
      keyRefresh: keyRefresh,
      controller: controller,
      child: ListView.builder(
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        itemBuilder: (context, index) {
          final number = index;

          return buildItem(number);
        },
      ),
    ),
  );
}

Widget buildItem(int number) => ListTile(
      title: Center(
        child: Text('$number', style: const TextStyle(fontSize: 32)),
      ),
    );
