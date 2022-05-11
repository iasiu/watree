import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/generated/l10n.dart';
import 'package:mobile/wt_navigator.dart';
import 'package:provider/provider.dart';

extension BuildContextX on BuildContext {
  GoRouter get router => read<WTNavigator>().router;
  S get l10n => S.of(this);
}
