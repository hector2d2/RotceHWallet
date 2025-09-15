import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rwallet/models/user_balance_model.dart';

class UserBalancesService {
  static FirebaseFirestore firestore = FirebaseFirestore.instance;

  static CollectionReference getUserBalanceCollection(String userUID) {
    final CollectionReference collectionBalance =
        firestore.collection('users').doc(userUID).collection('Balances');
    return collectionBalance;
  }

  static Future<UserBalanceModel?> getUserBalance(String userUID) async {
    try {
      final userBalanceCollection = getUserBalanceCollection(userUID);
      final docUserBalance = await userBalanceCollection.get();
      final userBalance = docUserBalance.docs.first;
      if (userBalance.exists) {
        Map<String, dynamic> userBalanceData =
            userBalance.data() as Map<String, dynamic>;
        return UserBalanceModel.fromJson(userBalanceData);
      }
      return null;
    } catch (e) {
      print('Error en getUserBalance ${e}');
      return null;
    }
  }
}
