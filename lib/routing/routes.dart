import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:cashier/routing/handlers.dart';

class Routes {
  static String splash = "/splash";
  static String root = "/";
  static String history = "/history";
  static String about = "/about";
  static String login = "/login";
  static String settings = "/settings";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    router.define(splash, handler: splashHandler);
    router.define(root, handler: indexHandler);
    router.define(about, handler: aboutHandler);
    router.define(login, handler: loginHandler);
    router.define(settings, handler: settingsHandler);
  }
}
