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
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
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
