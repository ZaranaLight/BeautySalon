import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:salon/helper/colors.dart';
import 'package:salon/helper/route_helper.dart';
import 'package:salon/widgets/myCustomButtons.dart';
import 'package:salon/widgets/myCustomTextFeild.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  // void _logIn(LoginController loginController) async {
  //
  //   String _email = _emailController.text.trim();
  //   String _password = _passwordController.text.trim();
  //   print(loginController.sigupdata);
  //
  //   final bool emailValid = RegExp(
  //       r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
  //       .hasMatch(_email);
  //
  //   if (_email.isEmpty) {
  //     showCustomSnackBar('Enter your email address', context);
  //     return;
  //   } else if (emailValid == false) {
  //     showCustomSnackBar('Email id should be valid', context);
  //   } else if (_password.isEmpty) {
  //     showCustomSnackBar('Enter your password', context);
  //     return;
  //   } else if (_password.length < 6) {
  //     showCustomSnackBar(
  //         'Password should be greater than 6 characters', context);
  //     return;
  //   } else if (loginController.sigupdata["password"] !=
  //       loginController.sigupdata["passwordConfirmation"]) {
  //     showCustomSnackBar('Password and Confirm Password not match', context);
  //     return;
  //   } else {
  //     Loading(context);
  //     Future.delayed(const Duration(seconds: 3), () {
  //       Navigator.pop(context);
  //       Get.toNamed(RouteHelper.getBankDetailScreen());
  //     });
  //
  //
  //
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // return GetBuilder<LoginController>(
    //     builder: (loginController) {
          return Scaffold(
            backgroundColor: ColorssA.White,
            body: SafeArea(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 0),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
                          Container(
                            height: Get.height * 0.3,
                            color: ColorssA.White,
                            child: Center(
                              child:  Lottie.asset(
                                'asses/lottie/login.json',
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  MyTextField(
                                      onTap: () {},
                                      controller: _emailController,
                                      textInputType: TextInputType.emailAddress,
                                      onSubmit: () {},
                                      onChanged: (email) {

                                        // loginController.addSigupdata("email", email);
                                      },
                                      hintText: 'Enter Your Email',
                                      titleText: 'Email'),
                                  MyTextField(
                                    controller: _passwordController,
                                    onTap: () {},
                                    onSubmit: () {},
                                    onChanged: (password) {

                                      // loginController.addSigupdata("password", password);
                                    },
                                    maxLines: 1,
                                    hintText: 'Enter Your Password',
                                    titleText: 'Password',
                                    isPassword: true,
                                    isEnabled: true,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  InkWell(
                                    onTap: () async{

                                      // _logIn(loginController);

                                    },
                                    child:  Center(
                                      child: ButtonWight(
                                        buttonText: "LogIn",
                                        borderButton: false,
                                        width: Get.width * 0.9,
                                        height: Get.height * 0.08,
                                        // loading: load,
                                        onClick: () => {
                                          // Get.toNamed(RouteHelper.getSignIn())
                                        },
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Center(
                                    child: Center(
                                      child: Text(
                                        '--- Or ---',
                                        style: TextStyle(
                                            color: ColorssA.Black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // Get.toNamed(RouteHelper.getSignup());
                                    },
                                    child: Center(
                                      child: Container(
                                        margin: EdgeInsets.symmetric(horizontal: 15),
                                        child: RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                                color: Theme.of(context).hintColor),
                                            children: [
                                              TextSpan(
                                                text: "Don\'t have an account? ",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Register Now',
                                                style: TextStyle(
                                                    color:
                                                    ColorssA.TextBlueBlackColor,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    decoration:
                                                    TextDecoration.underline),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // headerWidget('LogIn')
                ],
              ),
            ),
          );
        // }
    // );
  }
}
