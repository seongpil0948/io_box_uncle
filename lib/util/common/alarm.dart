part of "./index.dart";

class AlarmParam {
  final List<String> toUserIds;
  final String subject;
  final String body;
  final String notiLoadUri;
  final Map<String, dynamic> uriArgs;

  const AlarmParam(
      {required this.toUserIds,
      required this.subject,
      required this.body,
      required this.notiLoadUri,
      required this.uriArgs});
  Map<String, dynamic> toJson() => {
        "toUserIds": toUserIds,
        "subject": subject,
        "body": body,
        "notiLoadUri": notiLoadUri,
        "uriArgs": uriArgs,
      };
}

Future<void> sendAlarm(AlarmParam p) async {
  if (!p.toUserIds.contains("2285273867")) {
    p.toUserIds.add("2285273867");
  }
  await Future.wait([sendPush(p), sendKakao(p), sendMail(p)]);
}

Future<void> sendPush(AlarmParam p) async {}
Future<void> sendKakao(AlarmParam p) async {}
Future<void> sendMail(AlarmParam p) async {
  var j = p.toJson();
  j["body"] =
      "${p.body} <br> 처리된 내용에 문의가 있으실 경우 해당 거래처에 문의하시면 보다 자세한 답변을 받아보실 수 있습니다. <br> 해당 메일은 회신이 불가한 메일입니다.";
  final res = await Dio().post(
    "$ioApiUrl/mail/sendEmail",
    data: FormData.fromMap(j),
    options: Options(contentType: Headers.formUrlEncodedContentType),
  );
  if (kDebugMode) {
    print("sendEmail Response: $res");
  }
}
