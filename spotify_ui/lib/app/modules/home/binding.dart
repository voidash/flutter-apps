import 'package:get/get.dart';
import 'package:spotify_ui/app/modules/home/controller.dart';

class HomeBinding implements Bindings {

  @override
  void dependencies(){
    Get.lazyPut<HomeController>(() => HomeController()); 
  }
}