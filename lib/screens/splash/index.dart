import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:salon/helper/colors.dart';
import 'package:salon/helper/route_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Get.offNamed(RouteHelper.getIntro());
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorssA.appColor,

      body: Container(
        width: double.infinity,
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage('lib/assets/jpeg/home.jpg'), fit: BoxFit.cover),
        // ),
        child: Center(
          child: Lottie.asset('lib/assets/lottie/splash.json'),
        ),
      ),
    );
  }
}
