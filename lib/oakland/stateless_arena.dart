import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'arena.dart';

abstract class StatelessArena extends StatelessWidget with Arena, ArenaBuilder {
  @override
  Widget build(BuildContext context) => arenaBody(context);

  @override
  widgetBuilder() => (_) => this;
}
