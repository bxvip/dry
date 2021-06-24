import 'package:dry/common/page_404.dart';
import 'package:dry/dry.dart';
import 'package:flutter/material.dart';

import 'dry_route.dart';

class DryRouterDelegate extends RouterDelegate<RouteInformation> with ChangeNotifier, PopNavigatorRouterDelegateMixin<RouteInformation> {
  List<Page> pages = [];
  Map pageMap;

  String? location;

  DryRouterDelegate({required this.pageMap}) {
    DryRoute.instance.init(this);
  }

  @override
  RouteInformation get currentConfiguration {
    return RouteInformation(location: location ?? '/');
  }

  @override
  Widget build(BuildContext context) {
    if (pages.length == 0) {
      return Container();
    }
    return Navigator(
      key: Dry.navigatorKey = navigatorKey,
      pages: pages,
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        pop();

        return true;
      },
    );
  }

  @override
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();

  @override
  Future<void> setNewRoutePath(RouteInformation routeInformation) async {
    popAndPushNamed(routeInformation.location ?? '/');
  }

  pushNamedAndRemove(String name) {
    if (pages.length > 0) {
      pages.clear();
    }
    pushNamed(name);
  }

  popAndPushNamed(String name) {
    if (pages.length > 0) {
      pages.removeLast();
    }
    pushNamed(name);
  }

  pushNamed(String name) {
    var widget = pageMap[name];
    location = name;
    if (widget == null) {
      widget = Page404();
      location = '404';
    }

    pages.add(
      MaterialPage(
        key: UniqueKey(),
        child: widget,
      ),
    );

    notifyListeners();
  }

  push(Widget widget) {
    pages.add(
      MaterialPage(
        key: UniqueKey(),
        child: widget,
      ),
    );

    notifyListeners();
  }

  pop() {
    if (pages.length > 0) {
      pages.removeLast();
      notifyListeners();
    }
  }
}