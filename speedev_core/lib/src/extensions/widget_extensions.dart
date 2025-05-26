import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  SliverToBoxAdapter toSliver() {
    return SliverToBoxAdapter(child: this);
  }
}

extension EmptyWidgetExtensions on int {
  SizedBox get width => SizedBox(width: toDouble());
  SizedBox get height => SizedBox(height: toDouble());
}
