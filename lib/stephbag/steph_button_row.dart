import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:warriors/steph/steph_row.dart';

class StephButtonRow extends StephRow {
  final String text;
  final VoidCallback onPressed;

  StephButtonRow({
    this.text,
    @required this.onPressed,
  });

  @override
  Widget widget() => FlatButton(
        child: Text(text),
        onPressed: onPressed,
      );
}
