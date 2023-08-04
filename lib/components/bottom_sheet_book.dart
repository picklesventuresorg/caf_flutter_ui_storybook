import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

bool onpopPage(route, result) {
  return route.didPop(result);
}

@widgetbook.UseCase(
  name: 'Default Style',
  type: AppBottomSheet,
)
Widget defaultBottomSheet(BuildContext context) {
  return Navigator(
    onPopPage: onpopPage,
    pages: [
      MaterialPage<void>(child: Builder(builder: (context) {
        return AppButton(
            label: "Click Me",
            onClick: () {
              Alerts.showBottomSheet(context,
                  backgroundColor: AppColors.white,
                  title: "Default",
                  headerColor: AppColors.purple110,
                  titleColor: AppColors.white,
                  child: Column(
                    children: [
                      const AppPadding.regular(),
                      const AppText("Hello"),
                      const AppPadding.regular(),
                      AppButton(
                          label: "Hello Sample of Default Content",
                          onClick: () {})
                    ],
                  ));
            });
      }))
    ],
  );
}

@widgetbook.UseCase(
  name: 'Action BottomSheet Style',
  type: AppBottomSheet,
)
Widget actionBottomSheet(BuildContext context) {
  return Navigator(onPopPage: onpopPage, pages: [
    MaterialPage<void>(
      child: Builder(builder: (context) {
        return AppButton(
            label: "With Action",
            onClick: () {
              Alerts.showBottomSheet(context,
                  title: "With Title",
                  actions: [
                    AppButton(
                      type: AppButtonType.text,
                      onClick: () {
                        Navigator.of(context).pop();
                      },
                      label: "Done",
                    )
                  ],
                  child: Column(
                    children: [
                      const AppPadding.regular(),
                      const AppText("Hello"),
                      const AppPadding.regular(),
                      AppButton(
                          label: "Hello Sample of Content", onClick: () {})
                    ],
                  ));
            });
      }),
    )
  ]);
}
