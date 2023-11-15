import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:salon/helper/route_helper.dart';
import 'package:salon/intro/introScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior(),
      initialRoute: RouteHelper.getSplash(),
      getPages: RouteHelper.routes,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 500),

      // home: BottomTapBarScreen(),
    );
  }
}

