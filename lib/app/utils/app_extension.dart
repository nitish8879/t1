import 'package:flutter/widgets.dart';

extension AppSize on BuildContext {
  Size get mediaQuerySize => MediaQuery.sizeOf(this);
  double get realWidth => mediaQuerySize.width;
  double get realHeaight => mediaQuerySize.height;
}

extension SizeBoxW on num {
  SizedBox get width => SizedBox(width: toDouble());
  SizedBox get height => SizedBox(height: toDouble());
}
