import 'package:flutter_getx_boilerplate/api/api.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() async {
    // 注册网络提供者，内部配置抽象接口和拦截器
    Get.put(ApiProvider(), permanent: true);
    // 注册仓库，内部配置具体的接口请求 provider在上面注册了
    Get.put(ApiRepository(apiProvider: Get.find()), permanent: true);
  }
}
