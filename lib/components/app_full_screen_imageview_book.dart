import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/const/app_color.dart';
import 'package:caf_flutter_ui/custom_widget/fullscreen_imageview/pager_dot_config.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Default Style',
  type: AppFullScreenImgViewPager,
)
AppFullScreenImgViewPager defaultFullScreenImageView(BuildContext context) {
  return AppFullScreenImgViewPager(
    startPosition: 2,
    showIndicator: context.knobs.boolean(label: 'Show Indicator'),
    backgroundColor: context.knobs
        .color(label: 'Background Color', initialValue: AppColors.black),
    iconBgColor: context.knobs
        .color(label: 'Icon Background Color', initialValue: AppColors.black),
    iconColor:
        context.knobs.color(label: 'Icon Color', initialValue: AppColors.black),
    pagerDotConfig: PagerDotConfig(
        activeDotColor: context.knobs
            .color(label: 'Active Dot color', initialValue: AppColors.blue100),
        dotColor: context.knobs
            .color(label: 'Dot color', initialValue: Colors.white)),
    popUpMenuItems: [
      PopupMenuItem(
        child: const AppText.bodyRegular('Crop Image'),
        onTap: () {},
      ),
      PopupMenuItem(
        child: const AppText.bodyRegular('Edit Image'),
        onTap: () {},
      )
    ],
    onScaleChange: (index, scale) {},
    showCaseImageConfig: [
      ShowCaseImageConfig(url: img1, sourceType: AppImageSourceType.network),
      ShowCaseImageConfig(url: img2, sourceType: AppImageSourceType.network),
      ShowCaseImageConfig(url: img3, sourceType: AppImageSourceType.network),
    ],
  );
}

const img1 =
    'https://images.unsplash.com/photo-1661956602116-aa6865609028?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60';
const img2 =
    'https://images.unsplash.com/photo-1667870290984-33defdf825ab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60';
const img3 =
    'https://images.unsplash.com/photo-1661956602868-6ae368943878?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw1NXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60';
const img4 = 'assets/images/test.jpg';
