import 'package:flutter/widgets.dart';

extension ListWidgetExtension on List<Widget> {
  List<Widget> withGap(double gap) => [
    for (int i = 0; i < length; i++) ...[
      if (i > 0) SizedBox(width: gap, height: gap),
      this[i],
    ],
  ];
}
