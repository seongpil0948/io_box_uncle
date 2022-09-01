import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_box_uncle/config/index.dart';
import 'package:io_box_uncle/module/app/bloc/app_bloc.dart';
import 'package:io_box_uncle/module/auth/index.dart';
import 'package:io_box_uncle/module/ship/api/domain.dart';
import 'package:badges/badges.dart';
import 'package:io_box_uncle/view/component/card/common.dart';

import '../../module/ship/bloc/shipment_bloc.dart';
import '../../module/ship/model/index.dart';
import '../../module/ship/repo.dart';

part "./home.dart";
part './login.dart';
part 'pickup/pickup_list.dart';
part 'pickup/pickup_detail.dart';

class App extends StatelessWidget {
  final AuthRepo authRepo;
  const App({Key? key, required this.authRepo}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: lightTheme,
        darkTheme: darkTheme,
        home: RepositoryProvider.value(
          value: authRepo,
          child: MultiBlocProvider(providers: [
            BlocProvider(create: (context) => AppBloc(authRepo: authRepo)),
            BlocProvider(
                create: (context) => ShipmentBloc(
                    authRepo: authRepo,
                    orderRepo: const ShipmentRepo(api: ShipmentFB())))
          ], child: const AppView()),
        ));
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
  switch (state.module) {
    case ModulePage.pickupList:
      if (state.selectedPickup != null) {
        pages.add(PickupDetailPage.page(p: state.selectedPickup!));
      } else {
        pages.add(PickupListPage.page());
      }
      break;
    default:
  }
  if (kDebugMode) {
    print("pages of onGeneratePages: $pages");
  }
  return pages;
}
