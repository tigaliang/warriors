import 'package:flutter/widgets.dart';

class StephWidget extends Padding {
  const StephWidget({
    Key key,
    @required Widget child,
    EdgeInsetsGeometry padding,
  }) : super(
          key: key,
          padding: padding,
          child: child,
        );
}
