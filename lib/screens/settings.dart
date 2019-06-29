import 'package:flutter/material.dart';
import 'package:cashier/app.dart';
import 'package:cashier/widgets/scaffold.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'App settings',
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Account'),
            ),
            ListTile(
              title: FlatButton(
                onPressed: () {
                  App.router.navigateTo(
                    context,
                    '/login',
                  );
                },
                child: Text('Login'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
