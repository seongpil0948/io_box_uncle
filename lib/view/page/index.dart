import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_box_uncle/config/index.dart';
import 'package:io_box_uncle/module/app/bloc/app_bloc.dart';
import 'package:io_box_uncle/module/auth/index.dart';
import 'package:io_box_uncle/module/fcm/model.dart';
import 'package:io_box_uncle/view/component/button/index.dart';
import 'package:io_box_uncle/view/component/card/common.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../module/ship/bloc/shipment_bloc.dart';
import '../../module/ship/model/index.dart';

part "./home.dart";
part './login.dart';
part 'ship/pickup_list.dart';
part 'ship/ship_list.dart';
part 'ship/pickup_detail.dart';

class App extends StatelessWidget {
  final AuthRepo authRepo;
  final FcmRepo fcm;
  const App({Key? key, required this.authRepo, required this.fcm})
      : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '엉클박스',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: MultiRepositoryProvider(
            providers: [
              RepositoryProvider.value(value: shipRepo),
              RepositoryProvider.value(value: authRepo)
            ],
            child: MultiBlocProvider(providers: [
              BlocProvider(
                  create: (context) => AppBloc(authRepo: authRepo, fcm: fcm)),
              BlocProvider(
                  create: (context) =>
                      ShipmentBloc(authRepo: authRepo, orderRepo: shipRepo))
            ], child: const AppView())));
  }
}

class AppView extends StatelessWidget {
  const AppView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<AppState>(
      state: context.select((AppBloc bloc) => bloc.state),
      onGeneratePages: _onGenerateAppViewPages,
    );
  }
}

List<Page<dynamic>> _onGenerateAppViewPages(
  AppState state,
  List<Page<dynamic>> pages,
) {
  pages = [];
  switch (state.status) {
    case AppStatus.authenticated:
      pages.add(HomePage.page());
      break;
    case AppStatus.unauthenticated:
      pages.add(LoginPage.page());
      return pages;
  }
  if (state.module == ModulePage.pickupList) {
    pages.add(PickupListPage.page());
  } else if (state.module == ModulePage.shipList) {
    pages.add(ShipListPage.page());
  }
  if (state.selectedShip != null) {
    pages.add(PickupDetailPage.page(p: state.selectedShip!));
  }

  if (kDebugMode) {
    print("pages of onGeneratePages: $pages");
  }
  return pages;
}
