part of "./index.dart";

void showErrorSnack(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Row(
      children: [
        const Icon(
          Icons.error,
          color: Colors.red,
        ),
        Text(text)
      ],
    ),
  ));
}

void showSuccessSnack(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Row(
      children: [
        const Icon(
          Icons.add_reaction_outlined,
          color: Colors.blue,
        ),
        Text(text)
      ],
    ),
  ));
}
