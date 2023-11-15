import 'package:get/get.dart';
import 'package:salon/auth/login.dart';
import 'package:salon/auth/signUp.dart';
import 'package:salon/bottomBar/bottomBar/index.dart';
import 'package:salon/intro/introScreen.dart';

import '../screens/splash/index.dart';

class RouteHelper {
  static const String splash = '/splash';
  static const String intro = '/intro';
  static const String signUp = '/signUp';
  static const String signIn = '/signIn';
  static const String bottomNavigationBarApp = '/bottomNavigationBarApp';

  static String getSplash() => '$splash';
  static String getIntro() => '$intro';
  static String getSignUp() => '$signUp';
  static String getSignIn() => '$signIn';
  static String getBottomNavigationBarApp() => '$bottomNavigationBarApp';

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: intro, page: () => IntroScreens()),
    GetPage(name: signUp, page: () => SignupScreen()),
    GetPage(name: signIn, page: () => SignInScreen()),
    GetPage(name: bottomNavigationBarApp, page: () => BottomNavigationBarApp()),
  ];
}