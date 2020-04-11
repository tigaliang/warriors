import 'package:flutter/widgets.dart';

import 'steph_config.dart';
import 'steph_widget.dart';

abstract class StephRow {
  Key _key;
  double _paddingStart = StephConfig.paddingHorizontal;
  double _paddingTop = StephConfig.paddingVertical;
  double _paddingEnd = StephConfig.paddingHorizontal;
  double _paddingBottom = StephConfig.paddingVertical;

  Widget widget();

  StephRow key(final String strKey) {
    _key = Key(strKey);
    return this;
  }

  StephRow withPadding({
    final double start,
    final double top,
    final double end,
    final double bottom,
  }) {
    if (start != null) {
      _paddingStart = start;
    }
    if (top != null) {
      _paddingTop = top;
    }
    if (end != null) {
      _paddingEnd = end;
    }
    if (bottom != null) {
      _paddingBottom = bottom;
    }
    return this;
  }

  StephWidget build() {
    assert(_key != null, 'The key of a StephWidget can not be null.');

    return StephWidget(
      key: _key,
      child: widget(),
      padding: EdgeInsets.only(
        left: _paddingStart,
        top: _paddingTop,
        right: _paddingEnd,
        bottom: _paddingBottom,
      ),
    );
  }
}
