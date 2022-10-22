part of './model.dart';

class FcmRepo {
  final inst = FirebaseMessaging.instance;
  final channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    importance: Importance.high,
  );
  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  FcmToken? token;
  // NavigationCubit navi;
  FcmRepo({this.token});

  Future<void> sendPushMessage(
      {required PushSource source,
      required Iterable<String> destUserIds}) async {
    final res = await Dio().post(
      multiPushUrl,
      data: FormData.fromMap(source.bodyJson),
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );
    // await alarmSetBatch(
    //     destUserIds.map((e) => AlarmState(src: source, userId: e)));
    debugPrint("Push Msg Response: $res");
  }

  void subscribe(String topic) => inst.subscribeToTopic(topic);
  void unSubscribe(String topic) => inst.unsubscribeFromTopic(topic);

  Future<void> initFcm() async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    //onDidReceiveLocalNotification argument when creating an instance DarwinInitializationSettings object that is passed to the function for
    final DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(onDidReceiveLocalNotification: (
      int id,
      String? title,
      String? body,
      String? payload,
    ) async {
      // debugPrint("=========> Local Noti FCM IOS id: $id title: $title, body: $body, payload: $payload");
    });
    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsIOS,
            macOS: initializationSettingsIOS);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
    // NotificationSettings settings = await inst.requestPermission(
    final p = await inst.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    if (kDebugMode) {
      print(
          "result of  requestPermission: \n status: ${p.authorizationStatus}");
    }

    FirebaseMessaging.onBackgroundMessage(_onBackMessage);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      onMessage(message, flutterLocalNotificationsPlugin, channel);
      // navi.naviFromStr(message.data['targetPage']);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      final initialMsg = inst.getInitialMessage();
      final msg =
          '===FCM==> A new onMessageOpenedApp event was published! $message \n and initial msg: $initialMsg';
      debugPrint(msg);
      // navi.naviFromStr(message.data['targetPage']);
    });
  }
}

void onMessage(RemoteMessage message, FlutterLocalNotificationsPlugin plugin,
    AndroidNotificationChannel channel) {
  RemoteNotification? notification = message.notification;
  // AndroidNotification? android = message.notification?.android;
  final msg =
      "\n ===FCM==> onMessage: $message plugin: $plugin, channel: $channel";
  debugPrint(msg);
  IoLogger.log(IoSeverity.debug, msg);
  // FirebaseCrashlytics.instance.log(msg);
  if (notification != null) {
    plugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(channel.id, channel.name),
      ),
    );
  }
}

Future<void> _onBackMessage(RemoteMessage message) async {
  await Firebase.initializeApp();
  final msg = '===FCM==> Handling a background message $message';
  debugPrint(msg);
  IoLogger.log(IoSeverity.debug, msg);
  // FirebaseCrashlytics.instance.log(msg);
  // navi.naviFromStr(message.data['targetPage']);
}
