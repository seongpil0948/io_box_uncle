import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_box_uncle/module/auth/index.dart';
import 'package:io_box_uncle/view/page/index.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as k;
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';
import 'module/app/bloc/app_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final images = json
      .decode(await rootBundle.loadString('AssetManifest.json'))
      .keys
      .where((String key) => key.contains('res/assets/icons/'))
      .toList();
  debugPrint("Asset Image List: ${images.toString()}");
  Bloc.observer = AppBlocObserver();
  k.KakaoSdk.init(nativeAppKey: 'ee8b4a5bc6cce53051a8cc3154ab3c86');
  final pref = await SharedPreferences.getInstance();
  // pref.clear();
  final authRepo = AuthRepo(pref: pref);
  await authRepo.user.first;
  runApp(App(authRepo: authRepo));
}
