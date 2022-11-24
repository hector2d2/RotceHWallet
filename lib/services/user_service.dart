import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rwallet/Data/user_default.dart';
import 'package:rwallet/models/user_model.dart';

class UserService {
  static FirebaseFirestore firestore = FirebaseFirestore.instance;
  static CollectionReference users = firestore.collection('users');

  static Future<UserModel?> getUser(String uid) async {
    try {
      final docUser = await users.doc(uid).get();
      if (docUser.exists) {
        return UserModel.fromJson(docUser.data() as Map<String, dynamic>);
      }

      final user = FirebaseAuth.instance.currentUser;
      saveDataRegister(
        user!,
        user.displayName ?? 'Unknown',
        'Unknown',
      );
      return UserModel(
        displayName: user.displayName ?? 'Unknown',
        uid: user.uid,
        email: user.email!,
        photo: UserDefault.photo,
        provider: 'Unknown',
      );
    } catch (e) {
      print('Error en getUser ${e}');
      return null;
    }
  }

  static Future<bool> saveDataRegister(
    User user,
    String displayName,
    String provider,
  ) async {
    try {
      displayName = displayName.isEmpty ? user.displayName! : displayName;
      final userModel = UserModel(
        displayName: displayName,
        uid: user.uid,
        email: user.email!,
        photo: UserDefault.photo,
        provider: provider,
      );
      await users.doc(user.uid).set(
            userModel.toJson(),
            SetOptions(
              merge: true,
            ),
          );
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
