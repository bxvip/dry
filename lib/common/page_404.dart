import 'package:dry/dry.dart';
import 'package:dry/dry_button.dart';
import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text('你访问的页面不存在'),
            DryButton(
              iconData: Icons.arrow_back,
              label: '返回首页',
              onPressed: () {
                Dry.pushNamed('/');
              },
            ),
          ],
        ),
      ),
    );
  }
}