import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:caf_flutter_ui_storybook/helpers/helper.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widget;

@widget.UseCase(name: 'Default AppHeader', type: AppHeader)

/// Wrap AppHeader with SizeBox to constrain maxHeight on appbar size.'
Widget defaultAppHeader(BuildContext context) {
  return SafeAreaWrapper(
    child: SizedBox.fromSize(
      size: const Size.fromHeight(kToolbarHeight),
      child: AppHeader(
          headerHeight: kToolbarHeight,
          title: "Default",
          backgroundColor: context.knobs.color(
              label: 'AppBar Color', initialValue: AppColors.kcPrimaryColor),
          iconColor: context.knobs
              .color(label: 'Leading Color', initialValue: AppColors.white),
          isCenterTitle: context.knobs.boolean(label: 'Center Title'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () {},
          )),
    ),
  );
}

@widget.UseCase(name: 'AppHeader with menu action', type: AppHeader)

/// Wrap AppHeader with SizeBox to constrain maxHeight on appbar size.'
Widget appbarWithMenu(BuildContext context) {
  return SafeAreaWrapper(
    child: SizedBox.fromSize(
      size: const Size.fromHeight(kToolbarHeight),
      child: AppHeader(
        title: "Checkout Inspection",
        backgroundColor: context.knobs.color(
            label: 'AppBar Color', initialValue: AppColors.kcPrimaryColor),
        iconColor: context.knobs
            .color(label: 'Leading Color', initialValue: AppColors.white),
        isCenterTitle: context.knobs.boolean(label: 'Center Title'),
        leading: IconButton(
          icon: const Icon(Icons.close_rounded),
          onPressed: () {},
        ),
        actionsMenu: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.list_rounded,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
              )),
        ],
      ),
    ),
  );
}
