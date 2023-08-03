import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/custom_widget/image_carousel/app_carousel_slider.dart';
import 'package:caf_flutter_ui/custom_widget/image_carousel/carousel_options.dart';
import 'package:caf_flutter_ui_storybook/helpers/helper.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Default',
  type: AppCarouselSlider,
)
Widget defaultCarouselSlider(BuildContext context) {
  return SafeAreaWrapper(
    child: AppCarouselSlider(
      carouselOptions: CarouselOptions(
          autoPlay:
              context.knobs.boolean(label: 'Autoplay', initialValue: false),
          pageSnapping: context.knobs
              .boolean(label: 'Page Snapping', initialValue: false),
          isInfiniteSrcollEnable: context.knobs
              .boolean(label: 'Infinite Scroll', initialValue: true),
          disableAutoPlayInfiniteScrollOnEnd: context.knobs.boolean(
              label: 'Disable auto play infinite scroll end',
              initialValue: false),
          autoPlayInterval: const Duration(milliseconds: 800),
          aspectRatio: 2.0,
          viewportFraction: context.knobs.double.slider(
              label: 'ViewPort Fraction',
              min: 0.1,
              max: 1.0,
              initialValue: 0.8),
          padsEnd: context.knobs
              .boolean(label: 'Pads end Scroll', initialValue: true)),
      items: imageSliders,
    ),
  );
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: Image.network(item, fit: BoxFit.cover, width: 1000.0),
        ))
    .toList();

final List<String> imgList = [
  'https://images.unsplash.com/photo-1688059618839-256b51167f33?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
  'https://images.unsplash.com/photo-1688101628173-26ed64d4865c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
  'https://images.unsplash.com/photo-1687984351000-1afcdcfe5913?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1476&q=80',
  'https://images.unsplash.com/photo-1687639676496-ebb340ee4def?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
  'https://images.unsplash.com/photo-1674510501897-aa9e6aee34e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1332&q=80'
];
