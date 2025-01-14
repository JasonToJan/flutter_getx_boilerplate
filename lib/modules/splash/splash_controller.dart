import 'package:flutter_getx_boilerplate/routes/routes.dart';
import 'package:flutter_getx_boilerplate/shared/shared.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {

  @override
  void onReady() async {
    super.onReady();

    await Future.delayed(Duration(milliseconds: 2000));
    var storage = Get.find<SharedPreferences>();
    try {
      if (storage.getString(StorageConstants.token) != null) {
        // 首页
        Get.toNamed(Routes.HOME);
      } else {
        // 登录页
        Get.toNamed(Routes.AUTH);
      }
    } catch (e) {
      // 登录页
      Get.toNamed(Routes.AUTH);
    }
  }
}
