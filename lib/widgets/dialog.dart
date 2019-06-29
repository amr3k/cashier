import 'package:flutter/material.dart';

void errorMessage(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Error"),
        content: Text(message),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Close",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ],
      );
    },
  );
}
