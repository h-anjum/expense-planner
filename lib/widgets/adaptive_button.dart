import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final void Function() handler;
  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),
            ),
            onPressed: handler,
          )
        : TextButton(
            child: Text(
              text,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),
            ),
            onPressed: handler,
          );
  }
}
