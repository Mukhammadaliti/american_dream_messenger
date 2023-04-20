import 'package:american_dream_messenger/app/modules/welcom/views/welcom_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      // initialRoute: AppPages.INITIAL,
      home: WelcomView(),
      // getPages: AppPages.routes,
    ),
  );
}
