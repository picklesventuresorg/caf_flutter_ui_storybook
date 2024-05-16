import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/custom_widget/infinite_pagination.dart';
import 'package:caf_flutter_ui/custom_widget/infinite_pagination/app_infinite_list_pagination.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

final AppPagingController<int, String> pagingController = AppPagingController(
  initialPageKey: 1,
);

final AppPagingController<int, String> errorPagingController =
    AppPagingController(
  initialPageKey: 1,
);

@widgetbook.UseCase(name: 'Default', type: AppInfiniteListPagination)
Widget defaultAppInfinitePagination(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    pagingController.appendPage(items.sublist(0, (items.length / 3).ceil()), 2);
  });
  return AppInfiniteListPagination<int, String>(
      pageController: pagingController,
      shrinkWrap: true,
      firstPageProgressIndicatorBuilder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      itemBuilder: (_, item, index) {
        return AppPadding(
          padding: const AppPaddingData.symmetric(vertical: AppGapSize.regular),
          child: ListTile(
            title: Text(item.toString()),
          ),
        );
      });
}

@widgetbook.UseCase(name: 'Error', type: AppInfiniteListPagination)
Widget errorAppInfinitePagination(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    errorPagingController.appendPage(
        items.sublist(0, (items.length / 3).ceil()), 2);
    errorPagingController.error = Exception('Pagination Error');
  });
  return AppInfiniteListPagination<int, String>(
      pageController: errorPagingController,
      shrinkWrap: true,
      firstPageProgressIndicatorBuilder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      itemBuilder: (_, item, index) {
        return AppPadding(
          padding: const AppPaddingData.symmetric(vertical: AppGapSize.regular),
          child: ListTile(
            title: Text(item.toString()),
          ),
        );
      });
}

List<String> get items =>
    List.generate(10, (index) => 'Item ${index + 1}').toList();
