import 'package:get/get.dart';
import 'package:spotify_ui/app/modules/home/binding.dart';
import 'package:spotify_ui/app/modules/home/page.dart';
import 'package:spotify_ui/app/modules/splash/splash_page.dart';
part './routes.dart';

abstract class Pages  {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(name: Routes.SPLASH, page: () => SplashPage())
  ];

}