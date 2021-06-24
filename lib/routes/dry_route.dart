import 'package:dry/routes/dry_router_delegate.dart';
import 'package:flutter/material.dart';

class DryRoute {
  DryRoute._();

  static DryRoute? _instance;

  static DryRoute get instance => _getInstance();

  static DryRoute _getInstance() {
    if (_instance == null) {
      _instance = DryRoute._();
    }
    return _instance!;
  }

  late DryRouterDelegate _cryRouterDelegate;

  init(DryRouterDelegate cryRouterDelegate) {
    _cryRouterDelegate = cryRouterDelegate;
  }

  push(Widget widget) => _cryRouterDelegate.push(widget);

  pushNamed(String name) => _cryRouterDelegate.pushNamed(name);

  pushNamedAndRemove(String name) => _cryRouterDelegate.pushNamedAndRemove(name);

  popAndPushNamed(String name) => _cryRouterDelegate.popAndPushNamed(name);

  pop() => _cryRouterDelegate.pop();
}