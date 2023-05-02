import 'package:american_dream_messenger/app/modules/welcom/views/welcom_view.dart';
import 'package:american_dream_messenger/firebase_options.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
