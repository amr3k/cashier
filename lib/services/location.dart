import 'package:permission_handler/permission_handler.dart';

Future locationPermissionCheck() {
  return PermissionHandler().checkPermissionStatus(PermissionGroup.location);
}
