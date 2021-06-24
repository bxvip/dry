import 'package:flutter/material.dart';

import 'routes/dry_route.dart';

class Dry {
  static GlobalKey<NavigatorState>? navigatorKey;

  static get context {
    if (navigatorKey == null) {
      throw FlutterError('未初始化NavigatorKey');
    }
    return navigatorKey!.currentContext;
  }

  static Widget init(BuildContext context, Widget? child) {
    return Material(
      child: Overlay(
        initialEntries: [
          OverlayEntry(builder: (c) => child ?? Container()),
        ],
      ),
    );
  }

  static pushNamedAndRemove(String name) {
    DryRoute.instance.pushNamedAndRemove(name);
  }

  static popAndPushNamed(String name) {
    DryRoute.instance.popAndPushNamed(name);
  }

  static pushNamed(String name) {
    DryRoute.instance.pushNamed(name);
  }

  static push(Widget widget) {
    DryRoute.instance.push(widget);
  }

  static pop() => DryRoute.instance.pop();
}