import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:warriors/steph/steph_row.dart';

abstract class Arena {
  factory Arena._() => null;

  @protected
  String routeName() => null;

  @protected
  WidgetBuilder widgetBuilder();

  void launch(BuildContext context, {Object args}) {
    assert(routeName() != null, 'routeName() can not be null for a routable page.');

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: widgetBuilder(),
        settings: RouteSettings(name: routeName(), arguments: args),
      ),
    );
  }
}

abstract class ArenaBuilder {
  factory ArenaBuilder._() => null;

  @protected
  String title(BuildContext context) => '';

  @protected
  Widget appBar(BuildContext context) => AppBar(
        // TODO: support themes
        backgroundColor: Color.fromARGB(0xff, 0x25, 0x43, 0x86),
        title: Text(
          title(context),
        ),
      );

  List<StephRow> rows(BuildContext context);

  List<StephRow> footer(BuildContext context) => [];

  Color backgroundColor(BuildContext context) => Colors.white;

  Color footerColor(BuildContext context) => Colors.white;

  Widget arenaBody(BuildContext context) => Scaffold(
        appBar: appBar(context),
        body: Stack(
          children: <Widget>[
            Container(
              color: backgroundColor(context),
              child: ListView(
                children: rows(context)
                    .map(
                      (row) => Align(
                        alignment: Alignment.topLeft,
                        child: row.build(),
                      ),
                    )
                    .toList(growable: false),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                color: footerColor(context),
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children:
                      footer(context).map((row) => row.build()).toList(growable: false),
                ),
              ),
            ),
          ],
        ),
      );

  @protected
  T args<T>(BuildContext context) => ModalRoute.of(context).settings.arguments as T;
}
