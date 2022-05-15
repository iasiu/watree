import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:watree/generated/l10n.dart';
import 'package:watree/wt_navigator.dart';

extension BuildContextX on BuildContext {
  GoRouter get router => read<WTNavigator>().router;
  S get l10n => S.of(this);
}

extension IterableDoubleX on Iterable<double> {
  double get max =>
      reduce((value, element) => value > element ? value : element);

  double get min =>
      reduce((value, element) => value < element ? value : element);
}
