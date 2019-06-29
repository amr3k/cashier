import 'dart:async';

import 'package:connectivity/connectivity.dart';

Future checkConnectivity() async {
  return await Connectivity().checkConnectivity();
}

bool connectivityStatus(snapshot) {
  return (snapshot == ConnectivityResult.wifi ||
      snapshot == ConnectivityResult.mobile);
}
