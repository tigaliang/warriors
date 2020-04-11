import 'package:flutter/widgets.dart';
import 'package:warriors/oakland/stateful_arena.dart';
import 'package:warriors/steph/steph_row.dart';
import 'package:warriors/stephbag/steph_button_row.dart';

class DemoArenaArgs {
  String title;

  DemoArenaArgs(this.title);
}

class DemoStatefulArena extends StatefulArena {
  @override
  String routeName() => '/demo_stateful_arena';

  @override
  StatefulArenaBuilder<StatefulArena> createArenaBuilder() => _DemoStatefulArenaBuilder();
}

class _DemoStatefulArenaBuilder extends StatefulArenaBuilder<DemoStatefulArena> {
  var _counter = 0;

  @override
  String title(BuildContext context) => args<DemoArenaArgs>(context).title;

  @override
  List<StephRow> rows(BuildContext context) => [
        StephButtonRow(
          text: 'Click to +1: $_counter',
          onPressed: () {
            rebuild(() {
              _counter++;
            });
          },
        ).key('steph button')
      ];

  @override
  List<StephRow> footer(BuildContext context) => [
        StephButtonRow(
            text: 'Click to -1: $_counter',
            onPressed: () {
              rebuild(() {
                _counter--;
              });
            }).key('footer'),
      ];
}
