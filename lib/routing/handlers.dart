import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:cashier/screens/about.dart';
import 'package:cashier/screens/index.dart';
import 'package:cashier/screens/login.dart';
import 'package:cashier/screens/settings.dart';
import 'package:cashier/screens/splash.dart';
// Screens

var splashHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SplashScreen();
});

var indexHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Index();
});

var aboutHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return AboutPage();
});
var loginHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LoginPage();
});
var settingsHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SettingsPage();
});

//var browseHandler = new Handler(
//    type: HandlerType.function,
//    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//      String collection = params["collection"]?.first;
//      String parent = params["parent"]?.first;
//      showDialog(
//        context: context,
//        builder: (context) {
//          return BrowsePage(
//            collection: collection,
//            parent: parent,
//            fancy: false,
//          );
//        },
//      );
//    });
