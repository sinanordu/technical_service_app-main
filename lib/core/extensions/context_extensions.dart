import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;

  TextStyle get titleStyleLarge =>
      Theme.of(this).textTheme.headlineLarge!.copyWith(color: Colors.black);
  TextStyle get titleStyleMedium => Theme.of(this).textTheme.headlineMedium!;
  TextStyle get titleStyleSmall =>
      Theme.of(this).textTheme.headlineSmall!.copyWith(color: Colors.black);

  TextStyle get bodyStyleLarge => Theme.of(this)
      .textTheme
      .bodyLarge!
      .copyWith(color: Colors.black, fontSize: 10);
  TextStyle get bodyStyleMedium =>
      Theme.of(this).textTheme.bodyMedium!.copyWith(color: Colors.black);
}
