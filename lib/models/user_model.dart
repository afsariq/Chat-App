import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

///A strongly typed model to represent a `User` Entity
class User {
  //----CONSTANTS
  //Our intention is to use a strong type system
  //We can not make mistakes when dealing with strings
  static const String _USERS_COLLECTION_NAME = "users";
  static const String _KEY_NAME = "name";
  static const String _KEY_NICK_NAME = "nick_name";

  //----STATIC METHODS AND PROPERTIES
  ///Firestore instant
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  ///Firebase Auth instant
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  //----VARIABLES
  ///Phone number of the user
  final String phoneNumber;

  //----MECHANISMS
  ///Get a handle to a `User` using `phoneNumber`
  User(this.phoneNumber);

  ///Get document of this user
  DocumentReference get getDoc =>
      _firestore.collection(_USERS_COLLECTION_NAME).doc(phoneNumber);

  // Set a user property
  Future<void> setProp(String prop, dynamic val) async =>
      await getDoc.set({prop: val}, SetOptions(merge: true));

  ///Get a property of this user using
  Future<dynamic> getProperty(String prop) async {
    var data = await getDoc.get();
    return data.get(prop);
  }

  //----PROPERTIES
  ///Get user name
  Future<String> get name async => await getProperty(_KEY_NAME);

  /// Set user name
  Future<void> setName(String name) async => await setProp(_KEY_NAME, name);

  ///Get user nickname
  Future<String> get nickName async => await getProperty(_KEY_NICK_NAME);

  /// Set user nickname
  Future<void> setNickName(String name) async =>
      await setProp(_KEY_NICK_NAME, name);
}
