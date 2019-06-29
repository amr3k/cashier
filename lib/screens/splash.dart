import 'package:flutter/material.dart';
import 'package:sales/services/auth.dart';
import 'package:sales/services/location.dart';
import 'package:sales/widgets/dialog.dart';
import 'package:sales/app.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Future getLocationPermissionStatus =
          locationPermissionCheck().then((result) {
        print(result);
      });
      _locationPrompt(context);
    });
    return Scaffold(
      body: Column(
        children: <Widget>[
          FutureBuilder(
            future: getUserID(),
            builder: (BuildContext context, snapshot) {
              if (snapshot.hasError) {
                print(snapshot.error);
              }
              if (!snapshot.hasData) {
                // Load sign in prompt.
                print("No user!");
                return Center(child: CircularProgressIndicator());
              } else {
                print("User: ${snapshot.data}");
              }
              return Container();
            },
          ),
          Center(
            child: RawMaterialButton(onPressed: () {
              App.router.navigateTo(context, '/');
            }),
          )
        ],
      ),
    );
  }

  void _locationPrompt(BuildContext context) {
    showDialog(
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Location Permission request'),
          content: Text(
              "This app needs to know your current location to show products from nearby stores"),
          contentTextStyle: Theme.of(context).textTheme.subhead,
          contentPadding: EdgeInsets.all(10),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                'Grant',
                style: Theme.of(context).textTheme.button.copyWith(
                      color: Colors.white,
                    ),
              ),
              onPressed: () {
                print("Accept");
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
      context: context,
    );
  }
}
