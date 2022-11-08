import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_box_uncle/module/app/bloc/app_bloc.dart';
import 'package:io_box_uncle/module/ship/model/index.dart';

import '../form/index.dart';
part './ship.dart';

class IoCard extends StatelessWidget {
  final Widget? title;
  final Widget? titleExtra;
  final Widget? subtitle;
  final ShapeBorder? shape;
  final List<Widget>? footer;
  final Widget content;
  final double height;

  const IoCard({
    Key? key,
    this.title,
    this.titleExtra,
    this.subtitle,
    this.footer,
    this.shape,
    required this.content,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: shape,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: height,
            child: Column(children: [
              if (title != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [title!, if (titleExtra != null) titleExtra!],
                  ),
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
