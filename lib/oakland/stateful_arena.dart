import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'arena.dart';

abstract class StatefulArena extends StatefulWidget with Arena {
  StatefulArenaBuilder createArenaBuilder();

  @override
  State<StatefulWidget> createState() => createArenaBuilder();

  @override
  widgetBuilder() => (_) => this;
}

abstract class StatefulArenaBuilder<T extends StatefulArena> extends State<T>
    with ArenaBuilder {
  @override
  Widget build(BuildContext context) => arenaBody(context);

  @protected
  void rebuild(void Function() update) {
    setState(update);
  }
}
