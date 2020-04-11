import 'package:flutter/material.dart';
import 'package:warriors/oakland/stateless_arena.dart';
import 'package:warriors/steph/steph_config.dart';
import 'package:warriors/steph/steph_row.dart';
import 'package:warriors/stephbag/steph_button_row.dart';

import 'demo_stateful_arena.dart';
import 'demo_stateless_arena.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp() {
    StephConfig.paddingHorizontal = 24.0;
    StephConfig.paddingVertical = 24.0;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoHomePage(),
    );
  }
}

class DemoHomePage extends StatelessArena {
  @override
  String title(BuildContext context) => 'Flutter Warriors Demo';

  @override
  List<StephRow> rows(BuildContext context) => <StephRow>[
        StephButtonRow(
          text: 'Demo Stateful Arena with Args',
          onPressed: () {
            DemoStatefulArena().launch(
              context,
              args: DemoArenaArgs('Demo Stateful Arena'),
            );
          },
        ).key('Demo Stateful Arena'),
        StephButtonRow(
          text: 'Demo Stateless Arena with Args2',
          onPressed: () {
            DemoStatelessArena().launch(
              context,
              args: DemoArenaArgs2('Demo Stateless Arena'),
            );
          },
        ).key('Demo Stateless Arena'),
        StephButtonRow(onPressed: () {}, text: 'a').key('a'),
        StephButtonRow(onPressed: () {}, text: 'b').key('b'),
        StephButtonRow(onPressed: () {}, text: 'c').key('c'),
        StephButtonRow(onPressed: () {}, text: 'd').key('d'),
        StephButtonRow(onPressed: () {}, text: 'e').key('e'),
        StephButtonRow(onPressed: () {}, text: 'f').key('f'),
        StephButtonRow(onPressed: () {}, text: 'g').key('g'),
        StephButtonRow(onPressed: () {}, text: 'h').key('h'),
      ];
}
