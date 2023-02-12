part of "./index.dart";

void showErrorAlert(BuildContext context, String title, String content) {
  showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
            title: Text(title),
            content: Text(content),
          ));
}
