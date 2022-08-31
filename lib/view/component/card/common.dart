import 'package:flutter/material.dart';

class IoCard extends StatelessWidget {
  final Widget? title;
  final Widget? titleExtra;
  final Widget? subtitle;
  final List<Widget>? footer;
  final Widget content;
  final double height;

  const IoCard({
    Key? key,
    this.title,
    this.titleExtra,
    this.subtitle,
    this.footer,
    required this.content,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: height,
        child: Column(children: [
          if (title != null)
            Row(
              children: [title!, if (titleExtra != null) titleExtra!],
            ),
          if (subtitle != null) subtitle!,
          Expanded(child: content),
          if (footer != null) ...[
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: footer!
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: e,
                      ))
                  .toList(),
            )
          ]
        ]),
      ),
    ));
  }
}
