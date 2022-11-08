part of './index.dart';

class IntFormField extends StatelessWidget {
  final void Function(String? val) onSaved;
  const IntFormField({Key? key, required this.onSaved}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: onSaved,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '크기를 입력 해주세요.';
        } else if (int.tryParse(value) == null) {
          return "올바른 숫자를 입력해주세요";
        }
        return null;
      },
    );
  }
}
