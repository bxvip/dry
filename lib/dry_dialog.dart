
import 'package:flutter/material.dart';

import 'generated/l10n.dart';

void dryAlert(BuildContext context, String content) {
  dryAlertWidget(context, Text(content));
}

void dryAlertWidget(BuildContext context, Widget content) {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(S.of(context).information),
        content: content,
        actions: <Widget>[
          TextButton(
            child: Text(S.of(context).cancel),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

void cryConfirm(BuildContext context, String content, onConfirm) {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(S.of(context).information),
        content: Text(content),
        actions: <Widget>[
          TextButton(
            child: Text(S.of(context).cancel),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text(S.of(context).confirm),
            onPressed: () {
              Navigator.of(context).pop();
              onConfirm(context);
            },
          ),
        ],
      );
    },
  );
}

cryDialog({
  required BuildContext context,
  required String title,
  Widget? body,
  Future? then,
  double? width,
  double? height,
}) {
  AppBar header = AppBar(
    title: Text(title),
  );
  var result = Container(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          header,
          Expanded(
            child: SingleChildScrollView(
              child: body,
            ),
          ),
        ],
      ));
  return showDialog(
    context: context,
    builder: (BuildContext context) => Dialog(
      child: result,
    ),
  );
}