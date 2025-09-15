import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:rwallet/services/user_balances_service.dart';

class MyWalletController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    await getWalletUser();
  }

  Future getWalletUser() async {
    final user = FirebaseAuth.instance.currentUser;
    final useruid = user!.uid;
    final userBalance = await UserBalancesService.getUserBalance(useruid);
    print(userBalance);
  }
}
