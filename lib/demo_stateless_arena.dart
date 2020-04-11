import 'package:flutter/widgets.dart';
import 'package:warriors/oakland/stateless_arena.dart';
import 'package:warriors/steph/steph_row.dart';

class DemoArenaArgs2 {
  String title;

  DemoArenaArgs2(this.title);
}

class DemoStatelessArena extends StatelessArena {
  @override
  String routeName() => '/demo_stateless_arena';

  @override
  String title(BuildContext context) => args<DemoArenaArgs2>(context).title;

  @override
  List<StephRow> rows(BuildContext context) => [];
}
