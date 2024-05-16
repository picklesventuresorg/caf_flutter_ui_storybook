import 'package:caf_flutter_ui/caf_flutter_ui.dart';
import 'package:caf_flutter_ui/core/theme/app_theme_data.dart';

class CustomModel {
  final AppThemeColorMode colorMode;
  final ThemeData themeData;
  final String label;

  CustomModel({
    required this.colorMode,
    required this.themeData,
    required this.label,
  });

  factory CustomModel.regular() {
    return  CustomModel(
      colorMode: AppThemeColorMode.light,
      themeData: AppThemeData.regular().themeData,
      label: 'Light',
    );
  }

  CustomModel copyWith({
    AppThemeColorMode? colorMode,
    ThemeData? themeData,
    String? label,
  }) {
    return CustomModel(
      colorMode: colorMode ?? this.colorMode,
      themeData: themeData ?? this.themeData,
      label: label ?? this.label,
    );
  }

  @override
  String toString() {
    return 'CustomModel(colorMode: ${colorMode.name}, themeData: ${themeData.brightness}, label: $label)';
  }
}
