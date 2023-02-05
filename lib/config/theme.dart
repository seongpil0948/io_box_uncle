part of "./index.dart";

const cardBorderWidth = 1.5;
final cardRadius = BorderRadius.circular(20.0);
final cardTheme = CardTheme(
    elevation: 8.0,
    shape: RoundedRectangleBorder(
      side: const BorderSide(
        color: Color(0xFFFBC02D),
        width: cardBorderWidth,
      ),
      borderRadius: cardRadius,
    ));
final outlineBtnTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))));
final lightTheme = ThemeData(
    useMaterial3: true,
    extensions: const [CustomColors.light],
    brightness: Brightness.light,
    outlinedButtonTheme: outlineBtnTheme,
    primarySwatch: createMaterialColor(const Color(0xFFFBC02D)),
    cardTheme: cardTheme);
final darkTheme = ThemeData(
    useMaterial3: true,
    extensions: const [CustomColors.dark],
    brightness: Brightness.dark,
    outlinedButtonTheme: outlineBtnTheme,
    cardTheme: cardTheme,
    primarySwatch: createMaterialColor(const Color(0xFFFBC02D)));

MaterialColor createMaterialColor(Color color) {
  List<double> strengths = [.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.success,
    required this.info,
    required this.warning,
    required this.danger,
    required this.primaryCloudy,
  });
  final Color? success;
  final Color? info;
  final Color? warning;
  final Color? danger;
  final Color? primaryCloudy;
  @override
  CustomColors copyWith({
    Color? success,
    Color? info,
    Color? warning,
    Color? danger,
    Color? primaryCloudy,
  }) {
    return CustomColors(
        success: success ?? this.success,
        info: info ?? this.info,
        warning: warning ?? this.warning,
        danger: danger ?? this.danger,
        primaryCloudy: primaryCloudy ?? this.primaryCloudy);
  }

  // Controls how the properties change on theme changes
  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      success: Color.lerp(success, other.success, t),
      info: Color.lerp(info, other.info, t),
      warning: Color.lerp(warning, other.warning, t),
      danger: Color.lerp(danger, other.danger, t),
      primaryCloudy: Color.lerp(primaryCloudy, other.primaryCloudy, t),
    );
  }

  @override
  String toString() => 'CustomColors('
      'success: $success, info: $info, warning: $info, danger: $danger'
      ')';
  // the light theme
  static const light = CustomColors(
      success: Color(0xff28a745),
      info: Color(0xff17a2b8),
      warning: Color(0xffffc107),
      danger: Color(0xffdc3545),
      primaryCloudy: Color(0xFFFFD54F));
  // the dark theme
  static const dark = CustomColors(
      success: Color(0xff00bc8c),
      info: Color(0xff17a2b8),
      warning: Color(0xfff39c12),
      danger: Color(0xffe74c3c),
      primaryCloudy: Color(0xFFFFD54F));
}
