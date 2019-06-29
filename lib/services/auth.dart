import 'package:firebase_auth/firebase_auth.dart';

Future getUserID() {
  return FirebaseAuth.instance.currentUser();
}
