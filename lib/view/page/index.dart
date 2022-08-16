import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_box_uncle/module/app/bloc/app_bloc.dart';
import 'package:io_box_uncle/module/auth/index.dart';

part "./home.dart";
part './login.dart';

class App extends StatelessWidget {
  final AuthRepo authRepo;
  const App({Key? key, required this.authRepo}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("in App currentUser: ${authRepo.currentUser}");
    }
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: RepositoryProvider.value(
          value: authRepo,
          child: BlocProvider(
            create: (context) => AppBloc(authRepo: authRepo),
            child: const AppView(),
          )),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<AppStatus>(
      state: context.select((AppBloc bloc) => bloc.state.status),
      onGeneratePages: _onGenerateAppViewPages,
    );
  }
}

List<Page<dynamic>> _onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  if (kDebugMode) {
    print("in onGenerateAppViewPages state: $state \n pages: $pages");
  }
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}

// >>> THEME >>>
// #f0c755
final lightTheme = ThemeData(
    extensions: const [CustomColors.light],
    brightness: Brightness.light,
    primarySwatch: createMaterialColor(const Color(0xFFFBC02D)));
final darkTheme = ThemeData(
    extensions: const [CustomColors.dark],
    brightness: Brightness.dark,
    primarySwatch: createMaterialColor(const Color(0xFFFBC02D)));

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
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

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
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
// <<< THEME <<<