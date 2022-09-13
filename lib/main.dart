import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_box_uncle/module/auth/index.dart';
import 'package:io_box_uncle/util/logger.dart';
import 'package:io_box_uncle/view/page/index.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as k;
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';
import 'module/app/bloc/app_bloc.dart';

void main() {
  runZonedGuarded(() async {
    await _firebaseInit();
    Bloc.observer = AppBlocObserver();
    k.KakaoSdk.init(nativeAppKey: 'ee8b4a5bc6cce53051a8cc3154ab3c86');
    final pref = await SharedPreferences.getInstance();
    // pref.clear();
    final authRepo = AuthRepo(pref: pref);
    await authRepo.user.first;

    FlutterError.onError = (details) async {
      FlutterError.presentError(details);
      await IoLogger.log(
          IoSeverity.error, "Fatal Uncle App Error Detail: $details");
    };

    runApp(App(authRepo: authRepo));
  }, (error, stack) async {
    await IoLogger.log(
        IoSeverity.error, "Fatal Uncle App Error error: $error, stack: $stack");
  });
}

Future<void> _firebaseInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(minutes: 1),
    minimumFetchInterval:
        kDebugMode ? const Duration(minutes: 60) : const Duration(hours: 1),
  ));
  await remoteConfig.setDefaults(const {
    "logDebug": false,
    "logInfo": false,
    "logWarn": false,
    "logError": false,
  });
  await remoteConfig.fetchAndActivate();
  const msg = "io box uncle app firebase initialized";
  // await IoLogger.log(IoSeverity.debug, msg);
  await IoLogger.log(IoSeverity.info, msg);
  // await IoLogger.log(IoSeverity.warn, msg);
  // await IoLogger.log(IoSeverity.error, msg);
}
