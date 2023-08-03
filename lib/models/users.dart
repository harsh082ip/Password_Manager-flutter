import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser {
  String name;
  String email;
  String uid;

  MyUser({required this.email, required this.name, required this.uid});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'uid': uid,
    };
  }

  static MyUser formSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return MyUser(
        email: snapshot['email'], name: snapshot['name'], uid: snapshot['uid']);
  }
}
