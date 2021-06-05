import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/modules/home/binding.dart';
import 'app/modules/home/page.dart';
import 'core/theme/theme.dart';
import 'routes/pages.dart';

void main() {
  runApp(
    GetMaterialApp(
    debugShowCheckedModeBanner: false, 
    initialRoute: Routes.HOME,
    theme: getThemeData(),
    initialBinding: HomeBinding(),
    getPages: Pages.pages,
    home: HomePage(),
    )
  );

}


