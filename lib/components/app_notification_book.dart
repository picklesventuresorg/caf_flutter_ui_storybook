import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

bool onpopPage(route, result) {
  return route.didPop(result);
}

@widgetbook.UseCase(name: 'AppToast Default', type: AppToast)
Widget defaultToast(BuildContext context) {
  return Navigator(
    onPopPage: onpopPage,
    pages: [
      MaterialPage<void>(child: Builder(builder: (context) {
        return AppButton(
            label: "Click Me",
            onClick: () {
              AppToast.normal(context: context, message: 'Normal toast').show();
            });
      }))
    ],
  );
}

@widgetbook.UseCase(name: 'Success Toast', type: AppToast)
Widget succesToast(BuildContext context) {
  return Navigator(
    onPopPage: onpopPage,
    pages: [
      MaterialPage<void>(child: Builder(builder: (context) {
        return SafeArea(
          child: Column(
            children: [
              AppButton(
                onClick: () {
                  showSuccesToast(context,
                      appToastPosition: AppToastPosition.bottom,
                      appToastStyle: AppToastStyle.float);
                },
                label: "Success Float Bottom",
              ),
              const AppPadding.small(),
              AppButton(
                onClick: () {
                  showSuccesToast(context,
                      appToastPosition: AppToastPosition.top,
                      appToastStyle: AppToastStyle.float);
                },
                label: "Success Float Top",
              ),
              const AppPadding.small(),
              AppButton(
                onClick: () {
                  showSuccesToast(context,
                      appToastPosition: AppToastPosition.bottom,
                      appToastStyle: AppToastStyle.ground);
                },
                label: "Success ground Bottom",
              ),
              const AppPadding.small(),
              AppButton(
                onClick: () {
                  showSuccesToast(context,
                      appToastPosition: AppToastPosition.top,
                      appToastStyle: AppToastStyle.ground);
                },
                label: "Success ground top",
              ),
              const AppPadding.small(),
              AppButton(
                onClick: () {
                  showSuccesToast(context,
                      isAction: true,
                      appToastPosition: AppToastPosition.top,
                      appToastStyle: AppToastStyle.float);
                },
                label: "Success action",
              )
            ],
          ),
        );
      }))
    ],
  );
}

@widgetbook.UseCase(name: 'Info Toast', type: AppToast)
Widget infoToast(BuildContext context) {
  return Navigator(
    onPopPage: onpopPage,
    pages: [
      MaterialPage<void>(child: Builder(builder: (context) {
        return SafeArea(
          child: Column(
            children: [
              AppButton(
                onClick: () {
                  showInfoToast(context,
                      appToastPosition: AppToastPosition.bottom,
                      appToastStyle: AppToastStyle.float);
                },
                label: "Info Float Bottom",
              ),
              const AppPadding.small(),
              AppButton(
                onClick: () {
                  showInfoToast(context,
                      appToastPosition: AppToastPosition.top,
                      appToastStyle: AppToastStyle.float);
                },
                label: "Info Float Top",
              ),
              const AppPadding.small(),
              AppButton(
                onClick: () {
                  showInfoToast(context,
                      appToastPosition: AppToastPosition.bottom,
                      appToastStyle: AppToastStyle.ground);
                },
                label: "Info ground Bottom",
              ),
              const AppPadding.small(),
              AppButton(
                onClick: () {
                  showInfoToast(context,
                      appToastPosition: AppToastPosition.top,
                      appToastStyle: AppToastStyle.ground);
                },
                label: "Info ground top",
              ),
              const AppPadding.small(),
              AppButton(
                onClick: () {
                  showInfoToast(context,
                      isAction: true,
                      appToastPosition: AppToastPosition.top,
                      appToastStyle: AppToastStyle.float);
                },
                label: "Info action",
              )
            ],
          ),
        );
      }))
    ],
  );
}

@widgetbook.UseCase(name: 'Error Toast', type: AppToast)
Widget errorToast(BuildContext context) {
  return Navigator(
    onPopPage: onpopPage,
    pages: [
      MaterialPage<void>(child: Builder(builder: (context) {
        return SafeArea(
          child: Column(
            children: [
              AppButton(
                onClick: () {
                  showErrorToast(context,
                      appToastPosition: AppToastPosition.bottom,
                      appToastStyle: AppToastStyle.float);
                },
                label: "Error Float Bottom",
              ),
              const AppPadding.small(),
              AppButton(
                onClick: () {
                  showErrorToast(context,
                      appToastPosition: AppToastPosition.top,
                      appToastStyle: AppToastStyle.float);
                },
                label: "Error Float Top",
              ),
              const AppPadding.small(),
              AppButton(
                onClick: () {
                  showErrorToast(context,
                      appToastPosition: AppToastPosition.bottom,
                      appToastStyle: AppToastStyle.ground);
                },
                label: "Error ground Bottom",
              ),
              const AppPadding.small(),
              AppButton(
                onClick: () {
                  showErrorToast(context,
                      appToastPosition: AppToastPosition.top,
                      appToastStyle: AppToastStyle.ground);
                },
                label: "Error ground top",
              ),
              const AppPadding.small(),
              AppButton(
                onClick: () {
                  showErrorToast(context,
                      isAction: true,
                      appToastPosition: AppToastPosition.top,
                      appToastStyle: AppToastStyle.float);
                },
                label: "Error action",
              )
            ],
          ),
        );
      }))
    ],
  );
}

void showSuccesToast(BuildContext context,
    {required AppToastPosition appToastPosition,
    required AppToastStyle appToastStyle,
    AppToastDuration appToastDuration = AppToastDuration.short,
    bool isAction = false,
    bool isDismissible = true}) {
  AppToast.success(
          context: context,
          message: 'Success toast',
          isDismissible: isDismissible,
          style: appToastStyle,
          duration: appToastDuration,
          position: appToastPosition,
          isAction: isAction)
      .show();
}

void showInfoToast(BuildContext context,
    {required AppToastPosition appToastPosition,
    required AppToastStyle appToastStyle,
    AppToastDuration appToastDuration = AppToastDuration.short,
    bool isAction = false,
    bool isDismissible = true}) {
  AppToast.info(
          context: context,
          message: 'Info toast',
          isDismissible: isDismissible,
          style: appToastStyle,
          duration: appToastDuration,
          position: appToastPosition,
          isAction: isAction)
      .show();
}

void showErrorToast(BuildContext context,
    {required AppToastPosition appToastPosition,
    required AppToastStyle appToastStyle,
    AppToastDuration appToastDuration = AppToastDuration.short,
    bool isAction = false,
    bool isDismissible = true}) {
  AppToast.error(
          context: context,
          message: 'Error toast',
          isDismissible: isDismissible,
          style: appToastStyle,
          duration: appToastDuration,
          position: appToastPosition,
          isAction: isAction)
      .show();
}
