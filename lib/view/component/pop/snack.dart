part of "./index.dart";

void showErrorSnack(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Wrap(
      spacing: 5,
      runSpacing: 5,
      alignment: WrapAlignment.spaceAround,
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
    content: Wrap(
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
