import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/style/theme.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:expectations/utils/bindings/app_bindings.dart';
import 'package:firebase_core/firebase_core.dart';
// show Firebase, FirebaseOptions;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

// import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await initServices();
  // ApiRequests.initAPI();
  runApp(MyApp());
}

Future initServices() async {
  await Get.putAsync(() => AppHelper().initial());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale('ar'),
      initialRoute: Routes.splash,
      initialBinding: AppBindings(),
      theme: appTheme(),
      getPages: AppRoutes.routesPages,
    );
  }
}
