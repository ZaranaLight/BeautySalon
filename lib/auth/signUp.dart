
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:salon/helper/colors.dart';
import 'package:salon/helper/images.dart';
import 'package:salon/widgets/myCustomButtons.dart';
import 'package:salon/widgets/myCustomTextFeild.dart';

import '../../../helper/route_helper.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _conPasswordController = TextEditingController();

  // void _signUp(LoginController loginController) async {
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
  //   } else if (_nameController.text.isEmpty) {
  //     showCustomSnackBar('Enter your name', context);
  //     return;
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
  //     loginController.authRepo.setUserData(Strings.DISPLAYNAME,
  //         _nameController.text); //Strings.DISPLAYNAME
  //     loginController.authRepo..setUserData(Strings.DISPLAYEMAIL,
  //         _email); //Strings.DISPLAYNAME
  //     //Strings.DISPLAYNAME
  //     loginController.userDiaplayName =  _nameController.text;
  //     Loading(context);
  //     Future.delayed(Duration(seconds: 3), () {
  //       Navigator.pop(context);
  //       Get.toNamed(RouteHelper.getSignIn());
  //     });
  //     print('loginController.sigupdata---- ${loginController.sigupdata}');
  //
  //
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // return GetBuilder<LoginController>(builder: (loginController) {
      return Scaffold(
        key: _globalKey,
        backgroundColor: ColorssA.White,
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                // margin: EdgeInsets.only(top: Get.height * 0.1),
                height: Get.height,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Container(
                        height: Get.height * 0.25,
                        color: ColorssA.White,
                        child: Center(
                          child: Lottie.asset(
                            'asses/lottie/signUp.json',
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
                                  controller: _emailController,
                                  textInputType: TextInputType.emailAddress,
                                  onTap: () {},
                                  onSubmit: () {},
                                  onChanged: (email) {
                                    print('onChange-------------- ');
                                    // loginController.addSigupdata(
                                    //     "email", email);
                                  },
                                  hintText: 'Enter Your Email',
                                  titleText: 'Email'),
                              MyTextField(
                                controller: _nameController,
                                onTap: () {},
                                onSubmit: () {},
                                onChanged: (name) {
                                  // loginController.addSigupdata("name", name);
                                },
                                hintText: 'Enter User Name',
                                titleText: 'Name',
                              ),
                              MyTextField(
                                controller: _passwordController,
                                onTap: () {},
                                onSubmit: () {},
                                onChanged: (password) {
                                  // loginController.addSigupdata(
                                  //     "password", password);
                                },
                                hintText: 'Enter Your Password',
                                titleText: 'Password',
                                maxLines: 1,
                                isPassword: true,
                                selectedPass: true,
                              ),
                              MyTextField(
                                controller: _conPasswordController,
                                onTap: () {},
                                onSubmit: () {},
                                maxLines: 1,
                                onChanged: (conPassword) {
                                  // loginController.addSigupdata(
                                  //     "passwordConfirmation", conPassword);
                                },
                                hintText: 'Enter Your Confirm Password',
                                titleText: 'Confirm Password',
                                isPassword: true,
                                selectedPass: true,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                onTap: () async{

                                  // _signUp(loginController);
                                },
                                child:Center(
                                  child: ButtonWight(
                                    buttonText: "Create Account",
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
                                        color: ColorssA.Black.withOpacity(0.5),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Center(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      gradient: ColorssA.OrangeLinear,
                                      borderRadius: BorderRadius.circular(10)),
                                  padding:
                                  const EdgeInsets.only(left: 0, right: 0),
                                  child:
                                  // GetBuilder<LoginController>(
                                  //     builder: (LoginController) {
                                  //       return
                                          MaterialButton(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          color: Colors.transparent,
                                          // color: Colors.teal[100],
                                          elevation: 0,
                                          onPressed: () {

                                            // loginController.loginWithSignup(context);
                                          },

                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                Images.google,
                                                width: 30,
                                                height: 30,
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "Sign In with Google",
                                                style: TextStyle(
                                                    color: ColorssA.White,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                        ),
                                      // }),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(RouteHelper.getSignIn());
                                },
                                child: Center(
                                  child: Container(
                                    margin:
                                    EdgeInsets.symmetric(horizontal: 15),
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                            color: Theme.of(context).hintColor),
                                        children: [
                                          const TextSpan(
                                            text: "Already have an account? ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Login Now',
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
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // headerWidget('Sign Up')
            ],
          ),
        ),
      );
    // });
  }
}
