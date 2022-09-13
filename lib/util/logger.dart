import 'package:dio/dio.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:io_box_uncle/config/index.dart';

class IoLogger {
  static Future<void> log(IoSeverity level, String message,
      [String categorySub = "common"]) async {
    final config = FirebaseRemoteConfig.instance;
    if (kDebugMode) {
      print("===> Severity: $level message: $message");
    }
    if ((level == IoSeverity.debug && config.getBool("logDebug")) ||
        (level == IoSeverity.info && config.getBool("logInfo")) ||
        (level == IoSeverity.warn && config.getBool("logWarn")) ||
        (level == IoSeverity.error && config.getBool("logError"))) {
      return await _sendLog(level, message, categorySub);
    } else {
      return Future.value();
    }
  }

  static Future<void> _sendLog(
      IoSeverity level, String message, String categorySub) async {
    final data = {
      "logName": "io-uncle-worker-app",
      "category": "client-side",
      "categorySub": categorySub,
      "txt": message,
      "severity": level.name
    };

    final res = await Dio().post(
      "$ioApiUrl/log/ioLogging",
      data: FormData.fromMap(data),
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );
    if (kDebugMode) {
      print("logging response: $res ");
    }
  }
}

enum IoSeverity { debug, info, warn, error }
